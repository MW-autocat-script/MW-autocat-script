#!/bin/bash

KEYWORDS_HARVESTMOON="Harvest(| )Moon"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Harvest Moon series\n"
  fi

  HARVESTMOON="$(egrep -i "$KEYWORDS_HARVESTMOON" newpages.txt)"

  if [ "$HARVESTMOON" != "" ];
  then
    printf "%s" "$HARVESTMOON" > HarvestMoon.txt
    export CATFILE="HarvestMoon.txt"
    export CATNAME="Harvest Moon series"
    $CATEGORIZE
    rm HarvestMoon.txt
    unset HARVESTMOON
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Harvest Moon series\n"
  fi

fi