#!/bin/bash

KEYWORDS_HAITI="Haiti"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Haiti\n"
  fi

  HAITI=`egrep -i "$KEYWORDS_HAITI" newpages.txt`

  if [ "$HAITI" != "" ];
  then
    printf "$HAITI" > Haiti.txt
    export CATFILE="Haiti.txt"
    export CATNAME="Haiti"
    $CATEGORIZE
    rm Haiti.txt
    unset HAITI
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Haiti\n"
  fi

fi