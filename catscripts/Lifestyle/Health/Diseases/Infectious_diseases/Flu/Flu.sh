#!/bin/bash

KEYWORDS_FLU="\bFlu\b|influenza"
KEYWORDS_SWINEFLU="H1N1|swine(| )flu"
KEYWORDS_FLU_EXCLUDE="$KEYWORDS_SWINEFLU"

if [ "$1" == "" ];
then

  debug_start "Flu"

  FLU=$(egrep -i "$KEYWORDS_FLU" newpages.txt | egrep -iv "$KEYWORDS_FLU_EXCLUDE")
  SWINE=$(egrep -i "$KEYWORDS_SWINEFLU" newpages.txt)

  if [ "$FLU" != "" ];
  then
    printf "%s" "$FLU" > Flu.txt
    export CATFILE="Flu.txt"
    export CATNAME="Flu"
    $CATEGORIZE
    rm Flu.txt
    unset FLU
  fi

  if [ "$SWINE" != "" ];
  then
    printf "%s" "$SWINE" > SwineFlu.txt
    export CATFILE="SwineFlu.txt"
    export CATNAME="Swine flu"
    $CATEGORIZE
    rm SwineFlu.txt
    unset SWINE
  fi

  debug_end "Flu"

fi