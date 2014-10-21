#!/bin/bash

KEYWORDS_PIKAS="\bpika(\b|s)"
KEYWORDS_PIKAS_ALL="$KEYWORDS_PIKAS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Pikas"

  PIKAS=$(egrep -i "$KEYWORDS_PIKAS" "$NEWPAGES")

  categorize "PIKAS" "Pikas"

  debug_end "Pikas"

fi