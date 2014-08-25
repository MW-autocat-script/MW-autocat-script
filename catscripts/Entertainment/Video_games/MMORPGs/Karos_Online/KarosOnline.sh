#!/bin/bash

export KEYWORDS_MMORPG_KAROS="\bKaros\b"

if [ "$1" == "" ];
then

  debug_start "Karos Online"

  KAROS=$(egrep -i "$KEYWORDS_MMORPG_KAROS" "$NEWPAGES")

  categorize "KAROS" "Karos Online"

  debug_end "Karos Online"

fi