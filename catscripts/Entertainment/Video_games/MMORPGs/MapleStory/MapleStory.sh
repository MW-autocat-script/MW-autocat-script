#!/bin/bash

export KEYWORDS_MMORPG_MAPLESTORY="Maple(| )Story"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "MapleStory"

  MAPLESTORY=$(egrep -i "$KEYWORDS_MMORPG_MAPLESTORY" "$NEWPAGES")

  categorize "MAPLESTORY" "MapleStory"

  debug_end "MapleStory"

fi