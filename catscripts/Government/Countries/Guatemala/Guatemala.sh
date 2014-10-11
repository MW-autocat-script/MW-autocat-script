#!/bin/bash

KEYWORDS_GUATEMALA="Guat(a|e)mala"
KEYWORDS_GUATEMALA_ALL="$KEYWORDS_GUATEMALA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Guatemala"

  GUATEMALA=$(egrep -i "$KEYWORDS_GUATEMALA" "$NEWPAGES")

  categorize "GUATEMALA" "Guatemala"

  debug_end "Guatemala"

fi