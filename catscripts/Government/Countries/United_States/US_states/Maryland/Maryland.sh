#!/bin/bash

KEYWORDS_MARYLAND="Maryland"
KEYWORDS_MARYLAND_ALL="$KEYWORDS_MARYLAND"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Maryland"

  MARYLAND=$(egrep -i "$KEYWORDS_MARYLAND" "$NEWPAGES")

  categorize "MARYLAND" "Maryland"

  debug_end "Maryland"

fi