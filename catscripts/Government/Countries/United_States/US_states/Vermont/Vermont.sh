#!/bin/bash

KEYWORDS_VERMONT="Vermont|Montpelier"
KEYWORDS_VERMONT_ALL="$KEYWORDS_VERMONT"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Vermont"

  VERMONT=$(egrep -i "$KEYWORDS_VERMONT" "$NEWPAGES")

  categorize "VERMONT" "Vermont"

  debug_end "Vermont"

fi