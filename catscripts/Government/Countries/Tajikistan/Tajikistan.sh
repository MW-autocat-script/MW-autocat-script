#!/bin/bash

KEYWORDS_TAJIKISTAN="Tajikistan"
KEYWORDS_TAJIKISTAN_ALL="$KEYWORDS_TAJIKISTAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tajikistan"

  TAJIKISTAN=$(egrep -i "$KEYWORDS_TAJIKISTAN" "$NEWPAGES")

  categorize "TAJIKISTAN" "Tajikistan"

  debug_end "Tajikistan"

fi