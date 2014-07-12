#!/bin/bash

KEYWORDS_LEUKEMIA="Leukemia"

if [ "$1" == "" ];
then
  
  debug_start "Leukemia"

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

  debug_end "Leukemia"

fi