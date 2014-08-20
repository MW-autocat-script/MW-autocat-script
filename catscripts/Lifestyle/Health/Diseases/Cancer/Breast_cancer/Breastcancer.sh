#!/bin/bash

KEYWORDS_BREASTCANCER="Breast(| )cancer"

if [ "$1" == "" ];
then

  debug_start "Breast cancer"

  BREASTCANCER=$(egrep -i "$KEYWORDS_BREASTCANCER" "$NEWPAGES")

  if [ "$BREASTCANCER" != "" ];
  then
    printf "%s" "$BREASTCANCER" > Breastcancer.txt
    export CATFILE="Breastcancer.txt"
    export CATNAME="Breast cancer"
    $CATEGORIZE
    rm Breastcancer.txt
    unset BREASTCANCER
  fi

  debug_end "Breast cancer"

fi