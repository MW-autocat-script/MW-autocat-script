#!/bin/bash

KEYWORDS_SENEGAL="S(é|e)n(é|e)gal"
KEYWORDS_SENEGAL_ALL="$KEYWORDS_SENEGAL" 

if [ "$1" == "" ];
then
  
  debug_start "Senegal"

  SENEGAL=$(egrep -i "$KEYWORDS_SENEGAL" "$NEWPAGES")

  if [ "$SENEGAL" != "" ];
  then
    printf "%s" "$SENEGAL" > Senegal.txt
    export CATFILE="Senegal.txt"
    export CATNAME="Senegal"
    $CATEGORIZE
    rm Senegal.txt
    unset SENEGAL
  fi

  debug_end "Senegal"

fi