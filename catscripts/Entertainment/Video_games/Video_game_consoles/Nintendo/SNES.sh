#!/bin/bash

KEYWORDS_SNES="\bSNES\b|Super(| )Nintendo(| )Entertainment(| )System"
KEYWORDS_SNES_ALL="$KEYWORDS_SNES"

if [ "$1" == "" ];
then
  
  debug_start "SNES"

  SNES=$(egrep -i "$KEYWORDS_SNES" "$NEWPAGES")

  categorize "SNES" "SNES"

  debug_end "SNES"

fi