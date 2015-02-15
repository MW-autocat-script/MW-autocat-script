#!/bin/bash

export KEYWORDS_MMORPG_WOW="World(| )of(| )Warcraft|w\.o\.w|Ata'mal(| )Terrace|Bloodsail(| )Buccaneers"
KEYWORDS_MMORPG_WOW_CASESENSITIVE="WoW"

if [ "$1" == "" ];
then

  debug_start "World of Warcraft"

  WOW=$(egrep -i "$KEYWORDS_MMORPG_WOW" "$NEWPAGES" && egrep "$KEYWORDS_MMORPG_WOW_CASESENSITIVE" "$NEWPAGES")

  categorize "WOW" "World of Warcraft"

  debug_end "World of Warcraft"

fi