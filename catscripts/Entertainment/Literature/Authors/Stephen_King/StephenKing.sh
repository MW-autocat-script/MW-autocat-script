#!/bin/bash

KEYWORDS_STEPHENKING="Stephen(| )King"

if [ "$1" == "" ];
then
  
  debug_start "Stephen King"

  STEPHENKING=$(egrep -i "$KEYWORDS_STEPHENKING" newpages.txt)

  if [ "$STEPHENKING" != "" ];
  then
    printf "%s" "$STEPHENKING" > StephenKing.txt
    export CATFILE="StephenKing.txt"
    export CATNAME="Stephen King"
    $CATEGORIZE
    rm StephenKing.txt
    unset STEPHENKING
  fi

  debug_end "Stephen King"

fi