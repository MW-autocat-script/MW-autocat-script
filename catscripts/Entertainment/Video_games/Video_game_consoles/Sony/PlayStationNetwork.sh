#!/bin/bash

KEYWORDS_PLAYSTATION_NETWORK="Play(| )Station(| )(Network|Store)|\bPSN\b"

if [ "$1" == "" ];
then

  debug_start "PlayStation Network"

  PSN=$(egrep -i "$KEYWORDS_PLAYSTATION_NETWORK" newpages.txt)

  if [ "$PSN" != "" ];
  then
    printf "%s" "$PSN" > PlayStationNetwork.txt
    export CATFILE="PlayStationNetwork.txt"
    export CATNAME="PlayStation Network"
    $CATEGORIZE
    rm PlayStationNetwork.txt
    unset PSN
  fi

  debug_end "PlayStation Network"

fi