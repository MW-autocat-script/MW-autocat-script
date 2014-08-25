#!/bin/bash

KEYWORDS_RWANDA="Rwanda"
KEYWORDS_RWANDA_ALL="$KEYWORDS_RWANDA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Rwanda"

  RWANDA=$(egrep -i "$KEYWORDS_RWANDA" "$NEWPAGES")

  categorize "RWANDA" "Rwanda"

  debug_end "Rwanda"

fi