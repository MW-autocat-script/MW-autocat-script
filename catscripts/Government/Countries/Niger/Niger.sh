#!/bin/bash

KEYWORDS_NIGER="\bNiger(|s)\b"
KEYWORDS_NIGER_ALL="$KEYWORDS_NIGER"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Niger"

  NIGER=$(egrep -i "$KEYWORDS_NIGER" newpages.txt)

  if [ "$NIGER" != "" ];
  then
    printf "%s" "$NIGER" > Niger.txt
    export CATFILE="Niger.txt"
    export CATNAME="Niger"
    $CATEGORIZE
    rm Niger.txt
    unset NIGER
  fi

  debug_end "Niger"

fi