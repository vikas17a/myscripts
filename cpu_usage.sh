#!/bin/sh
#script to check cpu usage add the maximum allowed usage as a command line parameter;

# Macro definitiions
Max=$1
TotalPS=0

# Validate number of arguments
if [ $# -ne 1 ] ; then
  echo "UNCERTAIN: Invalid number of arguments - Usage: cpu_load "
    exit 1
    fi

    # Check the CPU usage
    for PSID in `ps uax | awk '{if ($3 > 0) {print $3} }'`
    do
      TotalPS=`echo "$TotalPS $PSID" | awk '{ print $1 + $2 }'`
      done

      # Check if the CPU usage good or bad is

      st=`echo "$TotalPS < $Max" | bc`;
      if [ $st -eq 1 ] ; then
        echo "SUCCESS: CPU usage is [$TotalPS%], maximum allowed=[$1%] DATA:$TotalPS%   $loaddelta"
	else
	  echo "ERROR: CPU usage is [$TotalPS%], maximum allowed=[$1%] DATA:$TotalPS%   $loaddelta"
	  fi
	  
