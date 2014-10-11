#!/bin/bash

export KEYWORDS_MMORPG_FREEREALMS="Free(| )Realms"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Free Realms"

  FREEREALMS=$(egrep -i "$KEYWORDS_MMORPG_FREEREALMS" "$NEWPAGES")

  categorize "FREEREALMS" "Free Realms"

  debug_end "Free Realms"

fi