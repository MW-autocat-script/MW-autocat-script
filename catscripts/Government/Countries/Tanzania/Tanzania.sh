#!/bin/bash

KEYWORDS_TANZANIA="Tanzia|Tanzania"
KEYWORDS_TANZANIA_ALL="$KEYWORDS_TANZANIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tanzania"

  TANZANIA=$(egrep -i "$KEYWORDS_TANZANIA" "$NEWPAGES")

  categorize "TANZANIA" "Tanzania"

  debug_end "Tanzania"

fi