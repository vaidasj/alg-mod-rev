#!/bin/bash

GAMSLIB="../gamslib"
gather_solve_stats()
{

  ITERATIONS=0
  OBJECTIVE=0
  SOLUTION_FOUND="no"
  SOLVE_TIME=0

  FULL_LOG=$(cat $1)

  
  # Solution found
  LOG="$(cat $1 | grep 'optimal solution found.')"
  if [ "$LOG" != "" ]; then
    SOLUTION_FOUND="yes"
  fi

  # Read log file
  LOG="$(cat $1 | grep -i 'iterations')"

  # Number of iterations
  REGEX="([0-9]+)[[:blank:]]iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS="${BASH_REMATCH[1]}"
  fi
  
  # Objective value
  REGEX="objective[[:blank:]]([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep 'total:')"
  # Total solver time
  REGEX="([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLVE_TIME="${BASH_REMATCH[1]}"
  fi
}

load_ampl()
{
  TYPE=$1
  MODEL=$2
  DISABLE_PRESOLVE=$3
  SINGLE=$4
  
  rm -f ampl.run
    
  echo "model $MODEL.mod;" > ampl.run
  if [[ DISABLE_PRESOLVE -eq 1 ]]; then
    echo "option presolve 0;" >> ampl.run
  fi
  echo "option show_stats 1;" >> ampl.run
  echo "option solver minos;" >> ampl.run
  echo "option minos_options 'timing=1';" >> ampl.run
  echo "solve;" >> ampl.run

  STARTTIME=`date +%s%3N`
  ampl ampl.run 2> error 1> output
  AMPL_RESULT=$?
  ENDTIME=`date +%s%3N`
  
  if [ $AMPL_RESULT -ne 0 ]; then
    
    # Analyze error log for feasibility presolving
    ERROR_LOG="$(cat error)"
    REGEX="presolve finds no feasible solution possible"
    RDEMO="demo licenses"
    if [[ $ERROR_LOG =~ $REGEX ]]
    then
        TIMEDIFF="not feasible"
    else
        if [[ $ERROR_LOG =~ $RDEMO ]]
        then
            TIMEDIFF="license limit"
        else
            TIMEDIFF="model error"

            echo "=======Error ($AMPL_RESULT) loading $MODEL==========" >> ampl-solve-errors.log 
            cat error >> ampl-solve-errors.log 
            echo "====================================================" >> ampl-solve-errors.log 
        fi
    fi
  else
    TIMEDIFF=$((ENDTIME-STARTTIME))
    
    # Extract solve results
    gather_solve_stats output

    if [[ SINGLE -eq 1 ]]; then
      echo "Solution found: $SOLUTION_FOUND"
      echo "Solver time: $SOLVE_TIME s"
      echo "Objective: $OBJECTIVE"
      echo "Number of iterations: $ITERATIONS"
      echo "Total time: $TIMEDIFF ms"
      echo "$FULL_LOG"
    else
      echo "$SOLUTION_FOUND|$SOLVE_TIME|$OBJECTIVE|$ITERATIONS|$TIMEDIFF"
    fi
  
  fi
  
  rm -f ampl.run
  rm -f error
  rm -f output
}

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 [type] [modelname]  # solvers single model; [type]: lp, nlp, mcp, etc." >&2
  echo "       $0 [file name]         # solves all models listed in the csv file" >&2
  exit 1
fi

# Convert single model
if [ "$#" -eq 2 ]; then
    
  cp "$GAMSLIB/$2/$2"-scalar.mod "$2.mod"

  # Solve with presolving
  SOLVE_DEFAULT=$(load_ampl $1 $2 0 1)

  # Solve without presolving
  SOLVE_PRESOLVE_OFF=$(load_ampl $1 $2 1 1)
  
  echo "==================================="
  echo "Solving $1 model $2"
  echo "==================================="
  echo "Presolving ON"
  echo "$SOLVE_DEFAULT"
  echo "==================================="
  echo "Presolving OFF"
  echo "$SOLVE_PRESOLVE_OFF"
  echo "==================================="

  # Remove ampl model
  rm -f *.mod
  
# Load all models in provided gamslib directory
else
    # Create results file
    echo "|Model|Type|Presolve ON|Solved|Solve time|Objective|Iterations|Total time|" > MODEL_SOLVE_TIME.md
    echo "|---|---|---|---|---|---|---|---|" >> MODEL_SOLVE_TIME.md
    
    # Create error logs
    echo > ampl-solve-errors.log

    # Iterate through models in csv file
    export IFS=";"
    while read MODELNAME MODELTYPE; do
      
      SOLVE_DEFAULT="-"
      SOLVE_PRESOLVE_OFF="-"

      # Load models
      cp "$GAMSLIB/$MODELNAME/$MODELNAME"-scalar.mod "$MODELNAME.mod"

      # Solve with presolving
      SOLVE_DEFAULT=$(load_ampl $1 $MODELNAME 0)

      # Solve without presolving
      SOLVE_PRESOLVE_OFF=$(load_ampl $1 $MODELNAME 1)

      # Write results
      echo "|$MODELNAME|$MODELTYPE|Yes|$SOLVE_DEFAULT|" >> MODEL_SOLVE_TIME.md
      echo "|$MODELNAME|$MODELTYPE|No|$SOLVE_PRESOLVE_OFF|" >> MODEL_SOLVE_TIME.md
      
      # Remove scalar models
      rm -f *.mod
    done < "$1" 
fi
