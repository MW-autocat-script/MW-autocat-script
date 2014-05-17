#!/bin/bash

KEYWORDS_PLAYSTATION_NETWORK="Play(| )Station(| )(Network|Store)|\bPSN\b"

egrep -i "$KEYWORDS_PLAYSTATION_NETWORK" newpages.txt >> PlayStationNetwork.txt

PSN=$(stat --print=%s PlayStationNetwork.txt)

if [ $PSN -ne 0 ];
then
  export CATFILE="PlayStationNetwork.txt"
  export CATNAME="PlayStation Network"
  $CATEGORIZE
fi

rm PlayStationNetwork.txt