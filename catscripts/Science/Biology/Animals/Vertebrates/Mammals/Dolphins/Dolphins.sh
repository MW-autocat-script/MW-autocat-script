#!/bin/bash

KEYWORDS_DOLPHINS="Dolphin"
KEYWORDS_DOLPHINS_EXCLUDE="Miami(| )Dolphin|emulator"

if [ "$1" == "" ];
then

  debug_start "Dolphins"

  DOLPHIN=$(egrep -i "$KEYWORDS_DOLPHINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DOLPHINS_EXCLUDE")

  if [ "$DOLPHIN" != "" ];
  then
    printf "%s" "$DOLPHIN" > Dolphins.txt
    export CATFILE="Dolphins.txt"
    export CATNAME="Dolphins"
    $CATEGORIZE
    rm Dolphins.txt
    unset DOLPHIN
  fi

  debug_end "Dolphins"

fi