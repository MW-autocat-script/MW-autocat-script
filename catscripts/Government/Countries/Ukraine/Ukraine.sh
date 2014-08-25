#!/bin/bash

KEYWORDS_UKRAINE="Ukraine"
KEYWORDS_UKRAINE_ALL="$KEYWORDS_UKRAINE"

if [ "$1" == "" ];
then
  
  debug_start "Ukraine"

  UKRAINE=$(egrep -i "$KEYWORDS_UKRAINE" "$NEWPAGES")

  categorize "UKRAINE" "Ukraine"

  debug_end "Ukraine"

fi