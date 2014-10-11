#!/bin/bash

KEYWORDS_LITTLEBIGPLANET="Little(| )Big(| )Planet|\bLBP\b"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "LittleBigPlanet series"

  PLANET=$(egrep -i "$KEYWORDS_LITTLEBIGPLANET" "$NEWPAGES")

  categorize "PLANET" "LittleBigPlanet series"

  debug_end "LittleBigPlanet series"

fi