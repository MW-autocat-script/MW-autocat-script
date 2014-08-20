#!/bin/bash

export KEYWORDS_MMORPG_WOW="World(| )of(| )Warcraft|w\.o\.w"
KEYWORDS_MMORPG_WOW_CASESENSITIVE="WoW"

if [ "$1" == "" ];
then

  debug_start "World of Warcraft"

  WOW=$(egrep -i "$KEYWORDS_MMORPG_WOW" "$NEWPAGES" && egrep "$KEYWORDS_MMORPG_WOW_CASESENSITIVE" "$NEWPAGES")

  if [ "$WOW" != "" ];
  then
    printf "%s" "$WOW" > WorldOfWarcraft.txt
    export CATFILE="WorldOfWarcraft.txt"
    export CATNAME="World of Warcraft"
    $CATEGORIZE
    rm WorldOfWarcraft.txt
    unset WOW
  fi

  debug_end "World of Warcraft"

fi