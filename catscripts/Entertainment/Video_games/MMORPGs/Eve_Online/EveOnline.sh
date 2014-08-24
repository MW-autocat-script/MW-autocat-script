#!/bin/bash

export KEYWORDS_MMORPG_EVE="Eve(| )Online"

if [ "$1" == "" ];
then

  debug_start "Eve Online"

  EVE=$(egrep -i "$KEYWORDS_MMORPG_EVE" "$NEWPAGES")

  categorize "EVE" "Eve Online"

  debug_end "Eve Online"

fi