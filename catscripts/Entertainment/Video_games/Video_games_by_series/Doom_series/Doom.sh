#!/bin/bash

KEYWORDS_DOOMSERIES="original(| )Doom|Doom(| )1|Doom(| )(II\b|2)|Doom(| )(3|III\b)|Doom(| )(4|IV)|Final(| )Doom|PrBoom"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Doom series"

  DOOM=$(egrep -i "$KEYWORDS_DOOMSERIES" "$NEWPAGES")

  categorize "DOOM" "Doom series"

  debug_end "Doom series"

fi