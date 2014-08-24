#!/bin/bash

export KEYWORDS_MMORPG_GHOSTX="Ghost(| )X"

if [ "$1" == "" ];
then
  
  debug_start "GhostX"

  GHOSTX=$(egrep -i "$KEYWORDS_MMORPG_GHOSTX" "$NEWPAGES")

  categorize "GHOSTX" "GhostX"

  debug_end "GhostX"

fi