#!/bin/bash

KEYWORDS_UZBEKISTAN="Uzbekistan"
KEYWORDS_UZBEKISTAN_ALL="$KEYWORDS_UZBEKISTAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Uzbekistan"

  UZBEKISTAN=$(egrep -i "$KEYWORDS_UZBEKISTAN" "$NEWPAGES")

  categorize "UZBEKISTAN" "Uzbekistan"

  debug_end "Uzbekistan"

fi