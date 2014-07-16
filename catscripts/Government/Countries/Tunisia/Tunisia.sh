#!/bin/bash

KEYWORDS_TUNISIA="Tunisia"
KEYWORDS_TUNISIA_ALL="$KEYWORDS_TUNISIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tunisia"

  TUNISIA=$(egrep -i "$KEYWORDS_TUNISIA" newpages.txt)

  if [ "$TUNISIA" != "" ];
  then
    printf "%s" "$TUNISIA" > Tunisia.txt
    export CATFILE="Tunisia.txt"
    export CATNAME="Tunisia"
    $CATEGORIZE
    rm Tunisia.txt
    unset TUNISIA
  fi

  debug_end "Tunisia"

fi