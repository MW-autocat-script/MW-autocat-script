#!/bin/bash

KEYWORDS_TAMAGOTCHI="Tamagotchi"
KEYWORDS_TAMAGOTCHI_ALL="$KEYWORDS_TAMAGOTCHI"

if [ "$1" == "" ];
then
  
  debug_start "Tamagotchi"

  TAMAGOTCHI=$(egrep -i "$KEYWORDS_TAMAGOTCHI" "$NEWPAGES")

  if [ "$TAMAGOTCHI" != "" ];
  then
    printf "%s" "$TAMAGOTCHI" > Tamagotchi.txt
    export CATFILE="Tamagotchi.txt"
    export CATNAME="Tamagotchi"
    $CATEGORIZE
    rm Tamagotchi.txt
    unset TAMAGOTCHI
  fi

  debug_end "Tamagotchi"

fi