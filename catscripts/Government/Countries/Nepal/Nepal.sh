#!/bin/bash

KEYWORDS_NEPAL="Nepal"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Nepal\n"
  fi

  NEPAL=`egrep -i "$KEYWORDS_NEPAL" newpages.txt`

  if [ "$NEPAL" != "" ];
  then
    printf "$NEPAL" > Nepal.txt
    export CATFILE="Nepal.txt"
    export CATNAME="Nepal"
    $CATEGORIZE
    rm Nepal.txt
    unset NEPAL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Nepal\n"
  fi

fi