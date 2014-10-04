#!/bin/bash

KEYWORDS_PLAYSTATION_NETWORK="Play(| )Station(| )(Network|Store)|\bPSN\b"
KEYWORDS_PLAYSTATION_NETWORK_ALL="$KEYWORDS_PLAYSTATION_NETWORK"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "PlayStation Network"

  PSN=$(egrep -i "$KEYWORDS_PLAYSTATION_NETWORK" "$NEWPAGES")

  categorize "PSN" "PlayStation Network"

  debug_end "PlayStation Network"

fi