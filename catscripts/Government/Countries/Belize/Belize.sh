#!/bin/bash

KEYWORDS_BELIZE="Belize"
KEYWORDS_BELIZE_ALL="$KEYWORDS_BELIZE"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Belize\n"
  fi

  BELIZE=`stat --print=%s Belize.txt`

  if [ "$BELIZE" != "" ];
  then
    printf "$BELIZE" > Belize.txt
    export CATFILE="Belize.txt"
    export CATNAME="Belize"
    $CATEGORIZE
    rm Belize.txt
    unset BELIZE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Belize\n"
  fi

fi