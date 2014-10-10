#!/bin/bash

export KEYWORDS_MMORPG_SWTOR="The(| )Old(| )Republic|SW(:|)TOR"
KEYWORDS_MMORPG_SWTOR_EXCLUDE="Knights(| )of(| )the(| )old(| )Republic"

if [ "$1" == "" ];
then

  debug_start "Star Wars: The Old Republic"

  SWTOR=$(egrep -i "$KEYWORDS_MMORPG_SWTOR" "$NEWPAGES" | egrep -iv "$KEYWORDS_MMORPG_SWTOR_EXCLUDE")

  categorize "SWTOR" "Star Wars: The Old Republic"

  debug_end "Star Wars: The Old Republic"

fi