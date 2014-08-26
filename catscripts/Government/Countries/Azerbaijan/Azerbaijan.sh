#!/bin/bash

KEYWORDS_AZERBAIJAN="Azerbaijan"
KEYWORDS_AZERBAIJAN_ALL="$KEYWORDS_AZERBAIJAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Azerbaijan"

  AZERBAIJAN=$(egrep -i "$KEYWORDS_AZERBAIJAN" "$NEWPAGES")

  categorize "AZERBAIJAN" "Azerbaijan"

  debug_end "Azerbaijan"

fi