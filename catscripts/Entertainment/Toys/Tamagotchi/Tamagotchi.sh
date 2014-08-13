#!/bin/bash

KEYWORDS_TAMAGOTCHI="Tamagotchi"
KEYWORDS_TAMAGOTCHI_ALL="$KEYWORDS_TAMAGOTCHI"

if [ "$1" == "" ];
then
  
  debug_start "Tamagotchi"

  TAMAGOTCHI=$(egrep -i "$KEYWORDS_TAMAGOTCHI" newpages.txt)

  if [ "$TAMAGOTCHI" != "" ];
  then
    categorize "$TAMAGOTCHI" "Tamagotchi"
  fi

  debug_end "Tamagotchi"

fi