#!/bin/bash

KEYWORDS_PSP="\bPSP|Play(| )Station(| )Portable|\bPS Portable"

if [ "$1" == "" ];
then

  debug_start "PlayStation Portable"

  PSP=$(egrep -i "$KEYWORDS_PSP" newpages.txt)

  if [ "$PSP" != "" ];
  then
    printf "%s" "$PSP" > PlayStationPortable.txt
    export CATFILE="PlayStationPortable.txt"
    export CATNAME="PlayStation Portable"
    $CATEGORIZE
    rm PlayStationPortable.txt
    unset PSP
  fi

  debug_end "PlayStation Portable"

fi