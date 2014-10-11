#!/bin/bash

export KEYWORDS_MMORPG_GUILDWARS="Guild(| )War|PVX"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Guild Wars"

  GUILDWARS=$(egrep -i "$KEYWORDS_MMORPG_GUILDWARS" "$NEWPAGES")

  categorize "GUILDWARS" "Guild Wars"

  debug_end "Guild Wars"

fi