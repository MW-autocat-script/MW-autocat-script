#!/bin/bash

KEYWORDS_BELIZE="Belize"
KEYWORDS_BELIZE_ALL="$KEYWORDS_BELIZE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Belize"

  BELIZE=$(egrep -i "$KEYWORDS_BELIZE" "$NEWPAGES")

  categorize "BELIZE" "Belize"

  debug_end "Belize"

fi