#!/bin/bash

KEYWORDS_HARVESTMOON="Harvest(| )Moon"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Harvest Moon"

  HARVESTMOON=$(egrep -i "$KEYWORDS_HARVESTMOON" "$NEWPAGES")

  categorize "HARVESTMOON" "Harvest Moon series"

  debug_end "Harvest Moon"

fi