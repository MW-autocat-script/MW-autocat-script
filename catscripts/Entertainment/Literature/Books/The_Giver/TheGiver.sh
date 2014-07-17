#!/bin/bash

KEYWORDS_THEGIVER="The(| )Giver"

if [ "$1" == "" ];
then

  debug_start "The Giver"

  GIVER=$(egrep -i "$KEYWORDS_THEGIVER" newpages.txt)

  if [ "$GIVER" != "" ];
  then
    printf "%s" "$GIVER" > TheGiver.txt
    export CATFILE="TheGiver.txt"
    export CATNAME="The Giver"
    $CATEGORIZE
    rm TheGiver.txt
    unset GIVER
  fi

  debug_end "The Giver"

fi