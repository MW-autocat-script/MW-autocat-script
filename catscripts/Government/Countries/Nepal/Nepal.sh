#!/bin/bash

KEYWORDS_NEPAL="Nepal"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Nepal"

  NEPAL=$(egrep -i "$KEYWORDS_NEPAL" newpages.txt)

  if [ "$NEPAL" != "" ];
  then
    printf "%s" "$NEPAL" > Nepal.txt
    export CATFILE="Nepal.txt"
    export CATNAME="Nepal"
    $CATEGORIZE
    rm Nepal.txt
    unset NEPAL
  fi

  debug_end "Nepal"

fi