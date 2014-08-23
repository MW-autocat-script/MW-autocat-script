#!/bin/bash

export KEYWORDS_MMORPG_PANFU="Panfu"

if [ "$1" == "" ];
then
  
  debug_start "Panfu"

  PANFU=$(egrep -i "$KEYWORDS_MMORPG_PANFU" "$NEWPAGES")

  categorize "PANFU" "Panfu"

  debug_end "Panfu"

fi