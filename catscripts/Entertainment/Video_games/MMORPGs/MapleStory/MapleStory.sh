#!/bin/bash

export KEYWORDS_MMORPG_MAPLESTORY="Maple(| )Story"

if [ "$1" == "" ];
then
  
  debug_start "MapleStory"

  MAPLESTORY=$(egrep -i "$KEYWORDS_MMORPG_MAPLESTORY" newpages.txt)

  if [ "$MAPLESTORY" != "" ];
  then
    printf "%s" "$MAPLESTORY" > MapleStory.txt
    export CATFILE="MapleStory.txt"
    export CATNAME="MapleStory"
    $CATEGORIZE
    rm MapleStory.txt
    unset MAPLESTORY
  fi

  debug_end "MapleStory"

fi