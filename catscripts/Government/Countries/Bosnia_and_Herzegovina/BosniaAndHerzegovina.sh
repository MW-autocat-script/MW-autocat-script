#!/bin/bash

KEYWORDS_BOSNIAANDHERZEGOVINA="Bosnia|Herzegovina"
KEYWORDS_BOSNIAANDHERZEGOVINA_ALL="$KEYWORDS_BOSNIAANDHERZEGOVINA"

if [ "$1" == "" ];
then

  debug_start "Bosnia and Herzegovina"

  BOSNIA=$(egrep -i "$KEYWORDS_BOSNIAANDHERZEGOVINA" "$NEWPAGES")

  if [ "$BOSNIA" != "" ];
  then
    printf "%s" "$BOSNIA" > Bosnia.txt
    export CATFILE="Bosnia.txt"
    export CATANME="Bosnia and Herzegovina"
    $CATEGORIZE
    rm Bosnia.txt
    unset BOSNIA
  fi

  debug_end "Bosnia and Herzegovina"

fi