#!/bin/bash

KEYWORDS_CHILE="\bChile\b|Chilean"
KEYWORDS_CHILE_ALL="$KEYWORDS_CHILE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Chile"

  CHILE=$(egrep -i "$KEYWORDS_CHILE" "$NEWPAGES")

  categorize "CHILE" "Chile"

  debug_end "Chile"

fi