#!/bin/bash

gather_stats()
{

  # Read lst log file
  LOG="$(cat $1.lst)"
  
  # Initialize variables
  EQ_NO=0
  VAR_NO=0
  VAR_DISC_NO=0
  NON_ZERO_NO=0
  NON_ZERO_NL_NO=0
  
  # Number of equations
  REGEX="SINGLE EQUATIONS[[:blank:]]+([0-9]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    EQ_NO="${BASH_REMATCH[1]}"
  fi
  
  # Number of variables
  REGEX="SINGLE VARIABLES[[:blank:]]+([0-9]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    VAR_NO="${BASH_REMATCH[1]}"
  fi
  
  # Number of discrete variables
  REGEX="DISCRETE VARIABLES[[:blank:]]+([0-9]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    VAR_DISC_NO="${BASH_REMATCH[1]}"
  fi
  
  # Number of non zeros
  REGEX="NON ZERO ELEMENTS[[:blank:]]+([0-9]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    NON_ZERO_NO="${BASH_REMATCH[1]}"
  fi
  
  # Number of non linear non zeros
  REGEX="NON LINEAR N-Z[[:blank:]]+([0-9]+)"
  if [[ $LOG =~ $REGEX ]]
  then
    NON_ZERO_NL_NO="${BASH_REMATCH[1]}"
  fi 

  # Number of constraints and variables   
  EQ_AND_VAR_NO=$((EQ_NO+VAR_NO))
  
  # Check if model file exists, if not log error
  if [ ! -f $1 ]; then
    ERROR=-1
  else
    # Reformulations done
    REFORM=$(grep -oh 'Reformulation.*' $1)
  fi

}

convert_to_scalar()
{
    
  MODEL=$1
  TYPE=$2
  TARGET=$3
  EXT=$4
  FILENAME="$MODEL-scalar.$EXT"
  
  # Create convert configuration
  echo "$TARGET $FILENAME" > convert.opt
  
  # Run conversion, use configuration and log to file
  echo "option $TYPE=convert;" > gams-tmp.gms
  cat $MODEL.gms >> gams-tmp.gms
  mv gams-tmp.gms $MODEL.gms 
  
  gams $MODEL.gms optfile=1 o="$FILENAME.lst" lo=2 lf="$TARGET-convert.log" &> /dev/null
  ERROR=$?

  # Gather stats
  if [ "$ERROR" -eq 0 ]; then
    gather_stats $FILENAME
  fi
  
  # Remove options file
  rm convert.opt
}

write_stats()
{
  if [ -n "$REFORM" ]; then
    echo "$REFORM"
  fi
  echo "Number of constraints and variables: $EQ_AND_VAR_NO"
  echo "Number of nonzero elements: $NON_ZERO_NO (of which $NON_ZERO_NL_NO nonlinear)"
  echo "Number of discrete variables: $VAR_DISC_NO"
  echo ""
}

convert_model()
{
  MODELNAME=$1
  MODELTYPE=$2
    
  mkdir -p $MODELNAME
  cd $MODELNAME
  gamslib $MODELNAME

  # Convert to AMPL
  echo "Converting $MODELNAME model to scalar AMPL model"
  convert_to_scalar $MODELNAME $MODELTYPE ampl mod
  write_stats
  # Convert to GAMS
  echo "Converting $MODELNAME model to scalar GAMS model"
  convert_to_scalar $MODELNAME $MODELTYPE gams gms
  write_stats
  # Convert to Pyomo
  echo "Converting $MODELNAME model to scalar Pyomo model"
  convert_to_scalar $MODELNAME $MODELTYPE pyomo py
  write_stats
  
}

if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
  echo "Usage: $0 [modelname] [modeltype] # converts single model" >&2
  echo "       $0 [md table file] # converts all models listed in the md file" >&2
  exit 1
fi

# Create model directory
mkdir -p gamslib
rm -rf gamslib/*
cd gamslib

# Convert single model
if [ "$#" -eq 2 ]; then
  convert_model $1 $2
    # Parse results
  if [ "$ERROR" -eq 0 ]; 
  then
    echo "Success"
  else
    echo "Failure. Error: $ERROR"
  fi

# Convert all library provided in the csv file
else
    echo "|ID|Model|Type|Description|Files|Eq|Vars|Vars Disc|Non zero|Non zero NL|" > README.md
    echo "|---|---|---|---|---|---|---|---|---|---|---|---|" >> README.md

    TOTAL_MODELS=0
    CONVERTED=0
    FAILED=0
    
    export IFS=";"
    while read MID MNAME MDESC MTYPE IG; do 
      ## Skip GAMS proprietary models and ones using BCH facility
      if [[ "$MTYPE" != "GAMS" ]] && [[ "$MTYPE" != "MPSGE" ]] && ! [[ "$MNAME" =~ ^bch* ]]; 
      then
        echo "Converting model $MNAME ($MTYPE)"
        mkdir -p $MNAME
        cd $MNAME
        gamslib $MNAME >> /dev/null
                
        ## DECIS should be solved as LP problems
        if [ "$MTYPE" = "DECIS" ]; then
            MTYPE="LP"
        fi

        # Convert to AMPL
        echo "Converting $MODELNAME model to scalar AMPL model" >> $MNAME-stats.log
        convert_to_scalar $MNAME $MTYPE ampl mod
        write_stats >> $MNAME-stats.log
        
        # Convert to GAMS
        echo "Converting $MODELNAME model to scalar GAMS model" >> $MNAME-stats.log
        convert_to_scalar $MNAME $MTYPE gams gms
        write_stats >> $MNAME-stats.log 
        
        # Convert to Pyomo
        echo "Converting $MODELNAME model to scalar Pyomo model" >> $MNAME-stats.log
        convert_to_scalar $MNAME $MTYPE pyomo py
        write_stats >> $MNAME-stats.log
        
        # Create library entry
        if [ "$ERROR" -eq 0 ];
        then
            echo "|$MID|[$MNAME](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_$MNAME.html)|$MTYPE|$MDESC|[mod]($MNAME/$MNAME-scalar.mod) [gms]($MNAME/$MNAME-scalar.gms) [py]($MNAME/$MNAME-scalar.py)|$EQ_NO|$VAR_NO|$VAR_DISC_NO|$NON_ZERO_NO|$NON_ZERO_NL_NO|" >> ../README.md   
            cd ..
            CONVERTED=$((CONVERTED+1))
        else
            VERBOSE_ERROR=""
            if [ "$ERROR" -eq -1 ]; then
                VERBOSE_ERROR=$(grep -i error gams-convert.log | head -1)
                if [ -z "$VERBOSE_ERROR" ]; then
                    VERBOSE_ERROR=$(grep -i error "$MNAME-scalar.gms.lst" | head -1)
                fi
            fi
            echo "Failed to convert model $MNAME. Error: $ERROR $VERBOSE_ERROR" >> ../error.log
            cd ..
            rm -rf $MNAME
            FAILED=$((FAILED+1))
        fi
      fi
      TOTAL_MODELS=$((TOTAL_MODELS+1))
    done < "../$1"
    
    echo "====================================================="
    echo "                    JOB STATISTICS                   "
    echo "====================================================="
    echo "Total models:           $TOTAL_MODELS"
    echo "Successfully converted: $CONVERTED"
    echo "Failed to convert:      $FAILED"
    echo "Skipped:                $((TOTAL_MODELS-CONVERTED-FAILED))"
    echo "====================================================="
fi
