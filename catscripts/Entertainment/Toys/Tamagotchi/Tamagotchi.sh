#!/bin/bash

KEYWORDS_TAMAGOTCHI="Tamagotchi"
KEYWORDS_TAMAGOTCHI_ALL="$KEYWORDS_TAMAGOTCHI"

if [ "$1" == "" ];
then
  
  debug_start "Tamagotchi"

  TAMAGOTCHI=$(egrep -i "$KEYWORDS_TAMAGOTCHI" "$NEWPAGES")

  categorize "TAMAGOTCHI" "Tamagotchi"

  debug_end "Tamagotchi"

fi