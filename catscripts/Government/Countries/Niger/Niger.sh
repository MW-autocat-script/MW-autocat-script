#!/bin/bash

KEYWORDS_NIGER="\bNiger(|s)\b"
KEYWORDS_NIGER_ALL="$KEYWORDS_NIGER"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Niger"

  NIGER=$(egrep -i "$KEYWORDS_NIGER" "$NEWPAGES")

  categorize "NIGER" "Niger"

  debug_end "Niger"

fi