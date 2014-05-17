#!/bin/bash

KEYWORDS_ACTOR_ORLANDOBLOOM="Orlando(| )Bloom"

if [ "$1" == "" ];
then

  ORLANDOBLOOM=$(egrep -i "$KEYWORDS_ACTOR_ORLANDOBLOOM" newpages.txt)

  if [ "$ORLANDOBLOOM" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_ORLANDOBLOOM" newpages.txt > OrlandoBloom.txt
    export CATFILE="OrlandoBloom.txt"
    export CATNAME="Orlando Bloom"
    $CATEGORIZE
    rm OrlandoBloom.txt
    unset ORLANDOBLOOM
  fi

fi