#!/bin/bash

KEYWORDS_DOOMSERIES="original(| )Doom|Doom(| )1|Doom(| )(II\b|2)|Doom(| )(3|III\b)|Doom(| )(4|IV)|Final(| )Doom|PrBoom"

if [ "$1" == "" ];
then

  debug_start "Doom series"

  DOOM=$(egrep -i "$KEYWORDS_DOOMSERIES" "$NEWPAGES")

  if [ "$DOOM" != "" ];
  then
    printf "%s" "$DOOM" > Doom.txt
    export CATFILE="Doom.txt"
    export CATNAME="Doom series"
    $CATEGORIZE
    rm Doom.txt
    unset DOOM
  fi

  debug_end "Doom series"

fi