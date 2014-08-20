#!/bin/bash

KEYWORDS_HARVESTMOON="Harvest(| )Moon"

if [ "$1" == "" ];
then
  
  debug_start "Harvest Moon"

  HARVESTMOON="$(egrep -i "$KEYWORDS_HARVESTMOON" "$NEWPAGES")"

  if [ "$HARVESTMOON" != "" ];
  then
    printf "%s" "$HARVESTMOON" > HarvestMoon.txt
    export CATFILE="HarvestMoon.txt"
    export CATNAME="Harvest Moon series"
    $CATEGORIZE
    rm HarvestMoon.txt
    unset HARVESTMOON
  fi

  debug_end "Harvest Moon"

fi