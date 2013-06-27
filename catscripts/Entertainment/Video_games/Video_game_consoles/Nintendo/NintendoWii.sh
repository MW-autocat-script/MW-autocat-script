#!/bin/bash

KEYWORDS_NINTENDO_WII="\bWii"
KEYWORDS_NINTENDO_WII_EXCLUDE="\bWii(| )U\b|\bWii(| )Sports|\bWii(| )Fit|\bWii(| )Play"

egrep -i "$KEYWORDS_NINTENDO_WII" newpages.txt | egrep -iv "$KEYWORDS_NINTENDO_WII_EXCLUDE" >> NintendoWii.txt

WII=`stat --print=%s NintendoWii.txt`

if [ $WII -ne 0 ];
then
  export CATFILE="NintendoWii.txt"
  export CATNAME="Nintendo Wii"
  $CATEGORIZE
fi

rm NintendoWii.txt