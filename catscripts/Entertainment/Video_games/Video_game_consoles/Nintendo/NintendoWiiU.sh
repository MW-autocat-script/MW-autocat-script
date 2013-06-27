#!/bin/bash

KEYWORDS_NINTENDOWIIU="\bWii(| )U\b"

egrep -i "$KEYWORDS_NINTENDOWIIU" newpages.txt >> NintendoWiiU.txt

WIIU=`stat --print=%s NintendoWiiU.txt`

if [ $WIIU -ne 0 ];
then
  export CATFILE="NintendoWiiU.txt"
  export CATNAME="Nintendo Wii U"
  $CATEGORIZE
fi

rm NintendoWiiU.txt