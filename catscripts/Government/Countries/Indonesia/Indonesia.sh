#!/bin/bash

KEYWORDS_INDONESIA="Indonesia(|s)\b|Sulawesi"
KEYWORDS_INDONESIA_ALL="$KEYWORDS_INDONESIA"


if [ "$1" == "" ];
then
  
  debug_start "Indonesia"

  INDONESIA=$(egrep -i "$KEYWORDS_INDONESIA" newpages.txt)

  if [ "$INDONESIA" != "" ];
  then
    printf "%s" "$INDONESIA" > Indonesia.txt
    export CATFILE="Indonesia.txt"
    export CATNAME="Indonesia"
    $CATEGORIZE
    rm Indonesia.txt
    unset INDONESIA
  fi

  debug_end "Indonesia"

fi