#!/bin/bash

KEYWORDS_RWANDA="Rwanda"
KEYWORDS_RWANDA_ALL="$KEYWORDS_RWANDA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Rwanda"

  RWANDA=$(egrep -i "$KEYWORDS_RWANDA" newpages.txt)

  if [ "$RWANDA" != "" ];
  then
    printf "%s" "$RWANDA" > Rwanda.txt
    export CATFILE="Rwanda.txt"
    export CATNAME="Rwanda"
    $CATEGORIZE
    rm Rwanda.txt
    unset RWANDA
  fi

  debug_end "Rwanda"

fi