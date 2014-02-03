#!/bin/bash

KEYWORDS_LEUKEMIA="Leukemia"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Leukemia\n"
  fi

  LEUKEMIA="$(egrep -i "$KEYWORDS_LEUKEMIA" newpages.txt)"

  if [ "$LEUKEMIA" != "" ];
  then
    printf "%s" "$LEUKEMIA" > Leukemia.txt
    export CATFILE="Leukemia.txt"
    export CATNAME="Leukemia"
    $CATEGORIZE
    rm Leukemia.txt
    unset LEUKEMIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Leukemia\n"
  fi

fi