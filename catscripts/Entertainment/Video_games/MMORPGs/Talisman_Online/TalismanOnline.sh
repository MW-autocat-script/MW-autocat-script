#!/bin/bash

export KEYWORDS_MMORPG_TALISMAN="Talisman(| )Online"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Talisman Online"

  TALISMAN=$(egrep -i "$KEYWORDS_MMORPG_TALISMAN" "$NEWPAGES")

  categorize "TALISMAN" "Talisman Online"

  debug_end "Talisman Online"

fi