#!/bin/bash

export KEYWORDS_MMORPG_FRONTIER="Dead Frontier"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Dead Frontier"

  FRONTIER=$(egrep -i "$KEYWORDS_MMORPG_FRONTIER" "$NEWPAGES")

  categorize "FRONTIER" "Dead Frontier"

  debug_end "Dead Frontier"

fi