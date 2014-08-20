#!/bin/bash

KEYWORDS_LUGE="\bLuge(|s)\b"
KEYWORDS_BOBLSED="Bob(| )sle(d|igh)"

if [ "$1" == "" ];
then
  
  debug_start "Luge and bobsledding"

  LUGEANDBOBSLED="$(egrep -i "$KEYWORDS_BOBLSED|$KEYWORDS_LUGE" "$NEWPAGES")"

  if [ "$LUGEANDBOBSLED" != "" ];
  then
    printf "%s" "$LUGEANDBOBSLED" > Lugeandbobsledding.txt
    export CATFILE="Lugeandbobsledding.txt"
    export CATNAME="Luge and bobsledding"
    $CATEGORIZE
    rm Lugeandbobsledding.txt
    unset LUGEANDBOBSLED
  fi

  debug_end "Luge and bobsledding"

fi