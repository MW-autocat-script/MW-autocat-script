#!/bin/bash

KEYWORDS_GABON="\bGabon"
KEYWORDS_GABON_ALL="$KEYWORDS_GABON"

if [ "$1" == "" ];
then
  
  debug_start "Gabon"

  GABON=$(egrep -i "$KEYWORDS_GABON" "$NEWPAGES")

  if [ "$GABON" != "" ];
  then
    printf "%s" "$GABON" > Gabon.txt
    export CATFILE="Gabon.txt"
    export CATNAME="Gabon"
    $CATEGORIZE
    rm Gabon.txt
    unset GABON
  fi

  debug_end "Gabon"

fi