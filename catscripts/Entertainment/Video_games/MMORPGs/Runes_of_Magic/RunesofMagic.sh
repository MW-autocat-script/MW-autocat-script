#!/bin/bash

export KEYWORDS_MMORPG_RUNESOFMAGIC="Runes(| )of(| )Magic"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Runes of Magic"

  RUNESOFMAGIC=$(egrep -i "$KEYWORDS_MMORPG_RUNESOFMAGIC" "$NEWPAGES")

  categorize "RUNESOFMAGIC" "Runes of Magic"

  debug_end "Runes of Magic"

fi