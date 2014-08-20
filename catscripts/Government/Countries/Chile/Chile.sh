#!/bin/bash

KEYWORDS_CHILE="\bChile\b|Chilean"
KEYWORDS_CHILE_ALL="$KEYWORDS_CHILE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Chile"

  CHILE=$(egrep -i "$KEYWORDS_CHILE" "$NEWPAGES")

  if [ "$CHILE" != "" ];
  then
    printf "%s" "$CHILE" > Chile.txt
    export CATFILE="Chile.txt"
    export CATNAME="Chile"
    $CATEGORIZE
    rm Chile.txt
    unset CHILE
  fi

  debug_end "Chile"

fi