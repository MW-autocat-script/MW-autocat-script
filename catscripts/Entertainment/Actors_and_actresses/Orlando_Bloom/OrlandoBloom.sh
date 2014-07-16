#!/bin/bash

KEYWORDS_ACTOR_ORLANDOBLOOM="Orlando(| )Bloom"

if [ "$1" == "" ];
then

  debug_start "Orlando Bloom"

  ORLANDOBLOOM=$(egrep -i "$KEYWORDS_ACTOR_ORLANDOBLOOM" newpages.txt)

  if [ "$ORLANDOBLOOM" != "" ];
  then
    printf "%s" "$ORLANDOBLOOM" > OrlandoBloom.txt
    export CATFILE="OrlandoBloom.txt"
    export CATNAME="Orlando Bloom"
    $CATEGORIZE
    rm OrlandoBloom.txt
    unset ORLANDOBLOOM
  fi

  debug_end "Orlando Bloom"

fi