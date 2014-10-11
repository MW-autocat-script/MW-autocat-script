#!/bin/bash

export KEYWORDS_MMORPG_CLUBPENGUIN="Club(| )Penguin"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Club Penguin"

  CLUBPENGUIN=$(egrep -i "$KEYWORDS_MMORPG_CLUBPENGUIN" "$NEWPAGES")

  categorize "CLUBPENGUIN" "Club Penguin"

  debug_end "Club Penguin"

fi