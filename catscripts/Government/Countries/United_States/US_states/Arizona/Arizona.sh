#!/bin/bash

KEYWORDS_ARIZONA="Arizona"

if [ "$1" == "" ];
then

  debug_start "Arizona"

  ARIZONA=$(egrep -i "$KEYWORDS_ARIZONA" newpages.txt)

  if [ "$ARIZONA" != "" ];
  then
    printf "%s" "$ARIZONA" > Arizona.txt
    export CATFILE="Arizona.txt"
    export CATNAME="Arizona"
    $CATEGORIZE
    rm Arizona.txt
    unset ARIZONA
  fi

  debug_end "Arizona"

fi