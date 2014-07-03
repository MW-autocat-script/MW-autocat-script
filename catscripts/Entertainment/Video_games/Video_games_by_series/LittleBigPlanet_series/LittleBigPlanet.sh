#!/bin/bash

KEYWORDS_LITTLEBIGPLANET="Little(| )Big(| )Planet|\bLBP\b"

if [ "$1" == "" ];
then

  debug_start "LittleBigPlanet series"

  PLANET=$(egrep -i "$KEYWORDS_LITTLEBIGPLANET" newpages.txt)

  if [ "$PLANET" != "" ];
  then
    printf "%s" "$PLANET" > LittleBigPlanet.txt
    export CATFILE="LittleBigPlanet.txt"
    export CATNAME="LittleBigPlanet series"
    $CATEGORIZE
    rm LittleBigPlanet.txt
    unset PLANET
  fi

  debug_end "LittleBigPlanet series"

fi