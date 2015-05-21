#!/bin/bash

KEYWORDS_TRINIDAD="Trinidad|Tobago"
KEYWORDS_TRINIDAD_ALL="$KEYWORDS_TRINIDAD"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Trinidad and Tobago"

  TRINIDAD=$(egrep -i "$KEYWORDS_TRINIDAD" "$NEWPAGES")

  categorize "TRINIDAD" "Trinidad"

  debug_end "Trinidad and Tobago"

fi