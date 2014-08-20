#!/bin/bash

KEYWORDS_LUNGCANCER="Lung(| )cancer"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Lung cancer"

  LUNGCANCER=$(egrep -i "$KEYWORDS_LUNGCANCER" "$NEWPAGES")

  if [ "$LUNGCANCER" != "" ];
  then
    printf "%s" "$LUNGCANCER" > Lungcancer.txt
    export CATFILE="Lungcancer.txt"
    export CATNAME="Lung cancer"
    $CATEGORIZE
    rm Lungcancer.txt
    unset LUNGCANCER
  fi

  debug_end "Lung cancer"

fi