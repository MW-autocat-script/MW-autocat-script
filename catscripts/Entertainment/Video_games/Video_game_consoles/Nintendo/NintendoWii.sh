#!/bin/bash

KEYWORDS_NINTENDO_WII="\bWii"
KEYWORDS_NINTENDO_WII_EXCLUDE="\bWii(| )U\b|\bWii(| )Sports|\bWii(| )Fit|\bWii(| )Play|Mario(| )Kart(| )Wii"

if [ "$1" == "" ];
then

  debug_start "Nintendo Wii"

  WII=$(egrep -i "$KEYWORDS_NINTENDO_WII" "$NEWPAGES" | egrep -iv "$KEYWORDS_NINTENDO_WII_EXCLUDE")

  categorize "WII" "Nintendo Wii"

  debug_end "Nintendo Wii"

fi