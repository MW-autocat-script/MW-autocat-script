#!/bin/bash

KEYWORDS_HUNGERGAMES="Hunger(| )Game|Peeta|Everdeen|Katniss|Haymitch|Nightlock"

if [ "$1" == "" ];
then

  debug_start "The Hunger Games"

  HUNGER=$(egrep -i "$KEYWORDS_HUNGERGAMES" "$NEWPAGES")

  if [ "$HUNGER" != "" ];
  then
    printf "%s" "$HUNGER" > TheHungerGames.txt
    export CATFILE="TheHungerGames.txt"
    export CATNAME="The Hunger Games"
    $CATEGORIZE
    rm TheHungerGames.txt
    unset HUNGER
  fi

  debug_end "The Hunger Games"

fi