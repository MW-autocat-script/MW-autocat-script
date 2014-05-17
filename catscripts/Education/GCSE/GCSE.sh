#!/bin/bash

KEYWORDS_GCSE="GCSE|General Certificate of Secondary Education"
KEYWORDS_GCSE_ALL="$KEYWORDS_GCSE"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting GCSE\n"
  fi

  GCSE=$(egrep -i "$KEYWORDS_GCSE" newpages.txt)

  if [ "$GCSE" != "" ];
  then
    printf "$GCSE" > GCSE.txt
    export CATFILE="GCSE.txt"
    export CATNAME="GCSE"
    $CATEGORIZE
    rm GCSE.txt
    unset GCSE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing GCSE\n"
  fi

fi