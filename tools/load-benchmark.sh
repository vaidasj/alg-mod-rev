#!/bin/bash

load_pyomo()
{
  MODEL=$1
  
  STARTTIME=`date +%s%3N`
  pyomo convert --format=nl --output=pyomo.nl "$MODEL.py" &> error
  PYOMO_RESULT=$?
  ENDTIME=`date +%s%3N`
  
  if [ ! -f pyomo.nl ];
  then
    TIMEDIFF="model error"
    echo "=======Error ($PYOMO_RESULT) loading $MODEL==========" >> pyomo-errors.log
    cat error >> pyomo-errors.log 
    echo "=====================================================" >> pyomo-errors.log
  else
    TIMEDIFF=$((ENDTIME-STARTTIME))
    rm pyomo.nl
  fi
  
  rm -f "$MODEL.pyc"
  rm -f error
  
  echo $TIMEDIFF
}

load_gams()
{
  MODEL=$1
  GMSFILE="$MODEL.gms"
  
  rm -f convert.opt
  
  echo "AmplNLC gams.nlc" > convert.opt
  
  MTYPE=$(grep -o '^*\s\s\w*\swritten' $GMSFILE | cut -d" " -f3)

  echo "option $MTYPE=convert;" > gams-scalar.gms
  cat $GMSFILE >> gams-scalar.gms
  
  STARTTIME=`date +%s%3N`
  gams gams-scalar.gms lo=2 optfile=1 2> error 1> /dev/null
  GAMS_RESULT=$?
  ENDTIME=`date +%s%3N`
  
  if [ $GAMS_RESULT -ne 0 ];
  then
    TIMEDIFF="license limit"
    echo "=======Error ($GAMS_RESULT) loading $MODEL==========" >> gams-errors.log
    cat error >> gams-errors.log 
    echo "====================================================" >> gams-errors.log
  else
    TIMEDIFF=$((ENDTIME-STARTTIME))
    rm gams.nlc
    rm gmsfunc.c
    rm gmsfunc.h
    rm gams-scalar.gms
  fi
  
  rm -f convert.opt
  rm -f gams-scalar.lst
  rm -f gams-scalar.log
  rm -f error
  
  echo $TIMEDIFF
}

gather_presolve_stats()
{

  # Read log file
  LOG="$(cat $1 | grep -i 'Presolve eliminates')"

  # Number of constraints removed
  REGEX="([0-9]+)[[:blank:]]constraint"
  if [[ $LOG =~ $REGEX ]]
  then
    CONSTRAINTS_ELIMINATED="${BASH_REMATCH[1]}"
  fi
  
  # Number of variables removed
  REGEX="([0-9]+)[[:blank:]]variable"
  if [[ $LOG =~ $REGEX ]]
  then
    VARIABLES_ELIMINATED="${BASH_REMATCH[1]}"
  fi
  
  LOG="$(cat $1 | grep '^[0-9]* variables')"

  # Adjusted problem variables
  REGEX="([0-9]+)[[:blank:]]variables"
  if [[ $LOG =~ $REGEX ]]
  then
    VARIABLES_ADJUSTED="${BASH_REMATCH[1]}"
  fi

  LOG="$(cat $1 | grep '^[0-9]* constraints')"

  # Adjusted problem variables
  REGEX="([0-9]+)[[:blank:]]constraints"
  if [[ $LOG =~ $REGEX ]]
  then
    CONSTRAINTS_ADJUSTED="${BASH_REMATCH[1]}"
  fi
}

load_ampl()
{
  MODEL=$1
  
  rm -f ampl.run
  
  CONSTRAINTS_ELIMINATED=0
  VARIABLES_ELIMINATED=0
  CONSTRAINTS_ADJUSTED=0
  VARIABLES_ADJUSTED=0
  
  echo "model $MODEL.mod;" > ampl.run
  echo "option show_stats 1;" >> ampl.run
  echo "write g$MODEL;" >> ampl.run
  
  STARTTIME=`date +%s%3N`
  ampl ampl.run 2> error 1> output
  AMPL_RESULT=$?
  ENDTIME=`date +%s%3N`
  
  if [ $AMPL_RESULT -ne 0 ]; then
    
    # Analyze error log for feasibility presolving
    ERROR_LOG="$(cat error)"
    REGEX="resolve finds no feasible solution possible"
    RDEMO="demo licenses"
    if [[ $ERROR_LOG =~ $REGEX ]]
    then
        TIMEDIFF=$((ENDTIME-STARTTIME))
        echo "|$MODEL|$MODELTYPE|Yes|0|0|0|0|not feasible|" >> ampl-presolve-stats.md
    else
        if [[ $ERROR_LOG =~ $RDEMO ]]
        then
            TIMEDIFF="license limit"
        else
            TIMEDIFF="model error"

            echo "=======Error ($AMPL_RESULT) loading $MODEL==========" >> ampl-errors.log
            cat error >> ampl-errors.log 
            echo "====================================================" >> ampl-errors.log
        fi
    fi
  else
    TIMEDIFF=$((ENDTIME-STARTTIME))
    
    # Extract presolve results
    gather_presolve_stats output
    
    if [ $CONSTRAINTS_ELIMINATED -ne 0 ] || [ $VARIABLES_ELIMINATED -ne 0 ]; then
        echo "|$MODEL|$MODELTYPE|Yes|$CONSTRAINTS_ELIMINATED|$VARIABLES_ELIMINATED|$CONSTRAINTS_ADJUSTED|$VARIABLES_ADJUSTED|-|" >> ampl-presolve-stats.md
    else
        echo "|$MODEL|$MODELTYPE|No|0|0|0|0|-|" >> ampl-presolve-stats.md
    fi
    
    rm -f "$MODEL.nl"   
  fi
  
  rm -f ampl.run
  rm -f error
  rm -f output
  
  echo $TIMEDIFF  
}

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 [aml] [modelname]  # loads single model; [aml]: ampl, gams, pyomo" >&2
  echo "       $0 [directory path]   # loads all models in the gamslib directory" >&2
  exit 1
fi

# Convert single model
if [ "$#" -eq 2 ]; then
    
  if [ "$1" == "ampl" ]; 
  then
    LOAD_TIME=$(load_ampl $2)
  elif [ "$1" == "gams" ];
  then
    LOAD_TIME=$(load_gams $2)
  elif [ "$1" == "pyomo" ];
  then
    LOAD_TIME=$(load_pyomo $2)
  fi
  
  echo "Loading $1 model $2 took $LOAD_TIME ms"
  
# Load all models in provided gamslib directory
else
    # Create results file
    echo "|Model|Type|AMPL|GAMS|Pyomo|" > MODEL_LOADING_TIME.md
    echo "|---|---|---|---|---|" >> MODEL_LOADING_TIME.md
    
    # Create error logs
    echo > ampl-errors.log
    echo > gams-errors.log
    echo > pyomo-errors.log
    echo "|Model|Type|Presolved|Constraints excl|Variables excl|Constraints adj|Variables adj|Other|" > ampl-presolve-stats.md
    echo "|---|---|---|---|---|---|---|---|" >> ampl-presolve-stats.md

    # Iterate through gamslib directory
    for d in $1/*/ ; do
      DIR_PATH=$(realpath $d)
      MODELNAME=$(echo $DIR_PATH | awk -F/ '{print $NF}')   
      GAMSFILE="$DIR_PATH/$MODELNAME-scalar.gms"
      MODELTYPE=$(grep -o '^*\s\s\w*\swritten' $GAMSFILE | cut -d" " -f3)
      
      LOAD_TIME_AMPL="-"
      LOAD_TIME_GAMS="-"
      LOAD_TIME_PYMO="-"

      # Load models
      cp "$DIR_PATH/$MODELNAME"-scalar.mod .
      LOAD_TIME_AMPL=$(load_ampl "$MODELNAME-scalar")
      cp "$DIR_PATH/$MODELNAME"-scalar.gms .
      LOAD_TIME_GAMS=$(load_gams "$MODELNAME-scalar")
      cp "$DIR_PATH/$MODELNAME"-scalar.py .
      LOAD_TIME_PYMO=$(load_pyomo "$MODELNAME-scalar")
      
      # Write results
      echo "|$MODELNAME|$MODELTYPE|$LOAD_TIME_AMPL|$LOAD_TIME_GAMS|$LOAD_TIME_PYMO|" >> MODEL_LOADING_TIME.md
      
      # Remove scalar models
      rm -f *-scalar*
    done 
fi
