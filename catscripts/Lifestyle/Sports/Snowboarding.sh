#!/bin/bash

KEYWORDS_SNOWBOARDING="Snow(| )board"

if [ "$1" == "" ];
then
  
  debug_start "Snowboarding"

  SNOWBOARDING="$(egrep -i "$KEYWORDS_SNOWBOARDING" newpages.txt)"

  if [ "$SNOWBOARDING" != "" ];
  then
    printf "%s" "$SNOWBOARDING" > Snowboarding.txt
    export CATFILE="Snowboarding.txt"
    export CATNAME="Snowboarding"
    $CATEGORIZE
    rm Snowboarding.txt
    unset SNOWBOARDING
  fi

  debug_end "Snowboarding"

fi