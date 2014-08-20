#!/bin/bash

##Carbon compounds

KEYWORDS_CARBONDIOXIDE="Carbon(| )dioxide"
KEYWORDS_CARBONMONOXIDE="Carbon(| )monoxide"

if [ "$1" == "" ];
then

  debug_start "Compounds"

  CO=$(egrep -i "$KEYWORDS_CARBONDIOXIDE" "$NEWPAGES")
  COTWO=$(egrep -i "$KEYWORDS_CARBONMONOXIDE" "$NEWPAGES")

  if [ "$CO" != "" ];
  then
    printf "%s" "$CO" > CarbonMonoxide.txt
    export CATFILE="CarbonMonoxide.txt"
    export CATNAME="Carbon monoxide"
    $CATEGORIZE
    rm CarbonMonoxide.txt
    unset CO
  fi

  if [ "$COTWO" != "" ];
  then
    printf "%s" "$COTWO" > CarbonDioxide.txt
    export CATFILE="CarbonDioxide.txt"
    export CATNAME="Carbon dioxide"
    $CATEGORIZE
    rm CarbonDioxide.txt
    unset COTWO
  fi

  debug_end "Compounds"

fi
