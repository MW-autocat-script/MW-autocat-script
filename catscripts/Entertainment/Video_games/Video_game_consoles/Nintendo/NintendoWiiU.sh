#!/bin/bash

KEYWORDS_NINTENDOWIIU="\bWii(| )U\b"

if [ "$1" == "" ];
then

  debug_start "Nintendo Wii U"

  WIIU=$(egrep -i "$KEYWORDS_NINTENDOWIIU" newpages.txt)

  if [ "$WIIU" != "" ];
  then
    printf "%s" "$WIIU" > NintendoWiiU.txt
    export CATFILE="NintendoWiiU.txt"
    export CATNAME="Nintendo Wii U"
    $CATEGORIZE
    rm NintendoWiiU.txt
    unset WIIU
  fi

  debug_end "Nintendo Wii U"

fi