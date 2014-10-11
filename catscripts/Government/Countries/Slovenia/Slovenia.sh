#!/bin/bash

KEYWORDS_SLOVENIA="Slovenia"
KEYWORDS_SLOVENIA_ALL="$KEYWORDS_SLOVENIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Slovenia"

  SLOVENIA=$(egrep -i "$KEYWORDS_SLOVENIA" "$NEWPAGES")

  categorize "SLOVENIA" "Slovenia"

  debug_end "Slovenia"

fi