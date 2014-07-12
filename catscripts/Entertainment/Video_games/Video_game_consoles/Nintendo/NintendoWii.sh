#!/bin/bash

KEYWORDS_NINTENDO_WII="\bWii"
KEYWORDS_NINTENDO_WII_EXCLUDE="\bWii(| )U\b|\bWii(| )Sports|\bWii(| )Fit|\bWii(| )Play|Mario(| )Kart(| )Wii"

if [ "$1" == "" ];
then

  debug_start "Nintendo Wii"

  WII=$(egrep -i "$KEYWORDS_NINTENDO_WII" newpages.txt | egrep -iv "$KEYWORDS_NINTENDO_WII_EXCLUDE")

  if [ "$WII" != "" ];
  then
    printf "%s" "$WII" > NintendoWii.txt
    export CATFILE="NintendoWii.txt"
    export CATNAME="Nintendo Wii"
    $CATEGORIZE
    rm NintendoWii.txt
    unset WII
  fi

  debug_end "Nintendo Wii"

fi