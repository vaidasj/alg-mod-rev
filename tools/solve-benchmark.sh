#!/bin/bash

GAMSLIB="../gamslib"

gather_gurobi_stats()
{

  ITERATIONS=0
  ITERATIONS_EXPLORE=0
  ITERATIONS_BARIER=0
  OBJECTIVE=0
  SOLUTION_RESULT=""
  SOLVE_TIME=0

  FULL_LOG=$(cat $1)

  # Solution found
  LOG="$(cat $1 | grep 'solve_result =')"
  REGEX="=[[:blank:]](.+)$"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLUTION_RESULT="${BASH_REMATCH[1]}"
  fi

  # Solution found during presolve
  LOG="$(cat $1 | grep 'solve_result_num = 99')"
  if [[ $LOG != "" ]]
  then
    SOLUTION_RESULT="$SOLUTION_RESULT during AMPL presolve"
  fi
  
  # Objective value
  LOG="$(cat $1 | grep 'objective obj = ')"
  REGEX="=[[:space:]](-?[0-9\.]+)\."
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep 'optimal solution; objective')"
  REGEX="objective[[:space:]](-?[0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  # Number of simplex iterations
  LOG="$(cat $1 | grep 'Solved in')"
  REGEX="([0-9]+).+iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS="${BASH_REMATCH[1]}"
  fi

  # Number of explore iterations
  LOG="$(cat $1 | grep 'Explored')"
  REGEX="\(([0-9]+).+iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS_EXPLORE="${BASH_REMATCH[1]}"
  fi

  # Number of barier iterations
  LOG="$(cat $1 | grep 'Barrier solved model in')"
  REGEX="([0-9]+).+iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS_BARIER="${BASH_REMATCH[1]}"
  fi

  ITERATIONS=$((ITERATIONS + ITERATIONS_EXPLORE + ITERATIONS_BARIER))

  # Total solver time
  LOG="$(cat $1 | grep 'Solve =')"
  REGEX="([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLVE_TIME="${BASH_REMATCH[1]}"
  fi
}

gather_cplex_stats()
{

  ITERATIONS=0
  OBJECTIVE=0
  SOLUTION_RESULT=""
  SOLVE_TIME=0

  FULL_LOG=$(cat $1)

  # Solution found
  LOG="$(cat $1 | grep 'solve_result =')"
  REGEX="=[[:blank:]](.+)$"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLUTION_RESULT="${BASH_REMATCH[1]}"
  fi

  # Solution found during presolve
  LOG="$(cat $1 | grep 'solve_result_num = 99')"
  if [[ $LOG != "" ]]
  then
    SOLUTION_RESULT="$SOLUTION_RESULT during AMPL presolve"
  fi
  
  # Objective value
  REGEX="objective[[:blank:]](-?[0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep 'objective obj = ')"
  REGEX="=[[:space:]](-?[0-9\.]+)\."
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  # Number of iterations
  LOG="$(cat $1 | grep 'iterations')"
  REGEX="^([0-9]+).+iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS="${BASH_REMATCH[1]}"
  fi

  # Total solver time
  LOG="$(cat $1 | grep 'Solve =')"
  REGEX="([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLVE_TIME="${BASH_REMATCH[1]}"
  fi
}

gather_baron_stats()
{

  ITERATIONS=0
  OBJECTIVE=0
  SOLUTION_RESULT=""
  SOLVE_TIME=0

  ## Node status: -1 : the best solution was found during preprocessing

  FULL_LOG=$(cat $1)

  # Solution found
  LOG="$(cat $1 | grep 'solve_result =')"
  REGEX="=[[:blank:]](.+)$"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLUTION_RESULT="${BASH_REMATCH[1]}"
  fi

  # Solution found during presolve
  LOG="$(cat $1 | grep 'solve_result_num = 99')"
  if [[ $LOG != "" ]]
  then
    SOLUTION_RESULT="$SOLUTION_RESULT during AMPL presolve"
  fi  

  # Number of iterations
  LOG="$(cat $1 | grep 'iterations')"
  REGEX="([0-9]+)[[:blank:]]iterations"
  if [[ $LOG =~ $REGEX ]]
  then
    ITERATIONS="${BASH_REMATCH[1]}"
  fi

  # Check if time limit was reached
  REGEX="CPU time limit reached"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLUTION_RESULT="$SOLUTION_RESULT. CPU time limit reached"
  fi

  # Objective value
  LOG="$(cat $1 | grep 'objective obj = ')"
  REGEX="=[[:space:]](-?[0-9\.]+)\."
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep 'Objective')"
  REGEX="Objective[[:blank:]](-?[0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  # Total solver time
  LOG="$(cat $1 | grep 'Baron run time')"
  REGEX="([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLVE_TIME="${BASH_REMATCH[1]}"
  fi
}

gather_minos_stats()
{

  ITERATIONS=0
  OBJECTIVE=0
  SOLUTION_RESULT=""
  SOLVE_TIME=0

  FULL_LOG=$(cat $1)

  # Solution found
  LOG="$(cat $1 | grep 'solve_result =')"
  REGEX="=[[:blank:]](.+)$"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLUTION_RESULT="${BASH_REMATCH[1]}"
  fi

  # Solution found during presolve
  LOG="$(cat $1 | grep 'solve_result_num = 99')"
  if [[ $LOG != "" ]]
  then
    SOLUTION_RESULT="$SOLUTION_RESULT during AMPL presolve"
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
  REGEX="objective[[:blank:]](-?[0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep 'objective obj = ')"
  REGEX="=[[:space:]](-?[0-9\.]+)\."
  if [[ $LOG =~ $REGEX ]]
  then
    OBJECTIVE="${BASH_REMATCH[1]}"
  fi

  # Total solver time
  LOG="$(cat $1 | grep 'total:')"
  REGEX="([0-9\.]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    SOLVE_TIME="${BASH_REMATCH[1]}"
  fi
}

load_ampl()
{
  SOLVER=$1
  MODEL=$2
  DISABLE_PRESOLVE=$3
  SINGLE=$4

  # Configure solver
  OPTION=""
  if [[ "$SOLVER" = "gurobi" ]]; then
    OPTIONS="option gurobi_options 'timing=1 logfile';"
  elif [[ "$SOLVER" = "minos" ]]; then
    OPTIONS="option minos_options 'timing=1';"
  elif [[ "$SOLVER" = "cplex" ]]; then
    OPTIONS="option cplex_options 'timing=1';"
  elif [[ "$SOLVER" = "baron" ]]; then
    OPTIONS="option baron_options 'barstats lsolmsg outlev=1 prloc=1 maxtime=500';"
  fi 

  # Stop if unsupported solver is provided
  if [ "$OPTIONS" = "" ]; then
    echo "Unsupported solver"
    exit 2
  fi

  rm -f ampl.run
    
  echo "model $MODEL.mod;" > ampl.run
  if [[ DISABLE_PRESOLVE -eq 1 ]]; then
    echo "option presolve 0;" >> ampl.run
  fi
  echo "option show_stats 1;" >> ampl.run
  echo "option solver $SOLVER;" >> ampl.run  
  echo "$OPTIONS" >> ampl.run
  echo "solve;" >> ampl.run
  echo "display solve_result_num, solve_result;" >> ampl.run

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
    if [ "$SOLVER" = "gurobi" ]; then
      gather_gurobi_stats output
    elif [ "$SOLVER" = "baron" ]; then
      gather_baron_stats output
    elif [ "$SOLVER" = "cplex" ]; then
      gather_cplex_stats output
    elif [ "$SOLVER" = "minos" ]; then
      gather_minos_stats output
    fi

    if [[ SINGLE -eq 1 ]]; then
      echo "Solution result: $SOLUTION_RESULT"
      echo "Solver: $SOLVER"
      echo "Solver time: $SOLVE_TIME s"
      echo "Objective: $OBJECTIVE"
      echo "Number of iterations: $ITERATIONS"
      echo "Total time: $TIMEDIFF ms"
      echo "$FULL_LOG"
    else
      echo "$SOLUTION_RESULT|$SOLVE_TIME|$OBJECTIVE|$ITERATIONS|$TIMEDIFF"
    fi
  
  fi
  
  rm -f ampl.run
  rm -f error
  rm -f output
}

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 [SOLVER] [modelname]  # solvers single model; [solver]: baron, cplex, gurobi, minos." >&2
  echo "       $0 [file name]           # solves all models listed in the csv file" >&2
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
    echo "|Model|Type|Presolve|Solver|Status|Solve time|Objective|Iterations|Total time|" > MODEL_SOLVE_TIME.md
    echo "|---|---|---|---|---|---|---|---|---|" >> MODEL_SOLVE_TIME.md
    
    # Create error logs
    echo > ampl-solve-errors.log

    # Iterate through models in csv file
    export IFS=";"
    while read MODELNAME TYPE; do
      
      SOLVE_DEFAULT="-"
      SOLVE_PRESOLVE_OFF="-"

      # Load models
      cp "$GAMSLIB/$MODELNAME/$MODELNAME"-scalar.mod "$MODELNAME.mod"

      # Choose solver by problem type
      # GUROBI: LP, MIP, QCP, MIQCP 
      # BARON: NLP, MINLP, MCP, MPEC, CNS, DNLP
      SOLVER=""
      if [[ "$TYPE" = "LP" ]] || [[ "$TYPE" = "MIP" ]] || [[ "$TYPE" = "QCP" ]] || [[ "$TYPE" = "MIQCP" ]]; then
        SOLVER="gurobi"
      elif [[ "$TYPE" = "NLP" ]] || [[ "$TYPE" = "MINLP" ]] || [[ "$TYPE" = "MCP" ]] || [[ "$TYPE" = "MPEC" ]] || [[ "$TYPE" = "CNS" ]] || [[ "$TYPE" = "DNLP" ]]; then
        SOLVER="baron"
      fi 
      # Solve with presolving
      SOLVE_DEFAULT=$(load_ampl $SOLVER $MODELNAME 0)

      # Solve without presolving
      SOLVE_PRESOLVE_OFF=$(load_ampl $SOLVER $MODELNAME 1)

      # Write results
      echo "|$MODELNAME|$TYPE|On|$SOLVER|$SOLVE_DEFAULT|" >> MODEL_SOLVE_TIME.md
      echo "|$MODELNAME|$TYPE|Off|$SOLVER|$SOLVE_PRESOLVE_OFF|" >> MODEL_SOLVE_TIME.md
      
      # Remove scalar models
      rm -f *.mod
    done < "$1" 
fi
