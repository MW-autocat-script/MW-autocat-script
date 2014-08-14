#!/bin/bash

KEYWORDS_SKATEBOARDING="Skate(| )board"
KEYWORDS_SKATEBOARDING_ALL="$KEYWORDS_SKATEBOARDING"

if [ "$1" == "" ];
then

  debug_start "Skateboarding"

  SKATEBOARDING=$(egrep -i "$KEYWORDS_SKATEBOARDING" newpages.txt)

  if [ "$SKATEBOARDING" != "" ];
  then
    printf "%s" "$SKATEBOARDING" > Skateboarding.txt
    export CATFILE="Skateboarding.txt"
    export CATNAME="Skateboarding"
    $CATEGORIZE
    rm Skateboarding.txt
    unset SKATEBOARDING
  fi

  debug_end "Skateboarding"

fi