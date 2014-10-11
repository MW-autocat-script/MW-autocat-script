#!/bin/bash

KEYWORDS_TUNISIA="Tunisia"
KEYWORDS_TUNISIA_ALL="$KEYWORDS_TUNISIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tunisia"

  TUNISIA=$(egrep -i "$KEYWORDS_TUNISIA" "$NEWPAGES")

  categorize "TUNISIA" "Tunisia"

  debug_end "Tunisia"

fi