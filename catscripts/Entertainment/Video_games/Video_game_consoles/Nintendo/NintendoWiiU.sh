#!/bin/bash

KEYWORDS_NINTENDOWIIU="\bWii(| )U\b"

if [ "$1" == "" ];
then

  debug_start "Nintendo Wii U"

  WIIU=$(egrep -i "$KEYWORDS_NINTENDOWIIU" "$NEWPAGES")

  categorize "WIIU" "Nintendo Wii U"

  debug_end "Nintendo Wii U"

fi