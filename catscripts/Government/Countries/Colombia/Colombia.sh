#!/bin/bash

KEYWORDS_COLOMBIA="Colombia|Bogot(a|á)"
KEYWORDS_COLOMBIA_ALL="$KEYWORDS_COLOMBIA"

if [ "$1" == "" ];
then
  
  debug_start "Colombia"

  COLOMBIA=$(egrep -i "$KEYWORDS_COLOMBIA" "$NEWPAGES")

  categorize "COLOMBIA" "Colombia"

  debug_end "Colombia"

fi