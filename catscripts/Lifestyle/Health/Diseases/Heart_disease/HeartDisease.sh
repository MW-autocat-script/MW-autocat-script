#!/bin/bash

KEYWORDS_HEARTDISEASE="Heart(| )disease"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Heart disease"

  HEARTDISEASE=$(egrep -i "$KEYWORDS_HEARTDISEASE" newpages.txt)

  if [ "$HEARTDISEASE" != "" ];
  then
    printf "%s" "$HEARTDISEASE" > HeartDisease.txt
    export CATFILE="HeartDisease.txt"
    export CATNAME="Heart disease"
    $CATEGORIZE
    rm HeartDisease.txt
    unset HEARTDISEASE
  fi

  debug_end "Heart disease"

fi