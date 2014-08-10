#!/bin/bash

KEYWORDS_MALTA="Malta(|s)\b"
KEYWORDS_MALTA_ALL="$KEYWORDS_MALTA"

if [ "$1" == "" ];
then
  
  debug_start "Malta"

  MALTA=$(egrep -i "$KEYWORDS_MALTA" newpages.txt)

  if [ "$MALTA" != "" ];
  then
    printf "%s" "$MALTA" > Malta.txt
    export CATFILE="Malta.txt"
    export CATNAME="Malta"
    $CATEGORIZE
    rm Malta.txt
    unset MALTA
  fi

  debug_end "Malta"

fi