#!/bin/bash

KEYWORDS_ARMENIA="Armenia"
KEYWORDS_ARMENIA_ALL="$KEYWORDS_ARMENIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Armenia"

  ARMENIA=$(egrep -i "$KEYWORDS_ARMENIA" "$NEWPAGES")

  categorize "ARMENIA" "Armenia"

  debug_end "Armenia"

fi

