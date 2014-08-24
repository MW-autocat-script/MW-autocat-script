#!/bin/bash

KEYWORDS_LATVIA="Latvia"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Latvia"

  LATVIA=$(egrep -i "$KEYWORDS_LATVIA" "$NEWPAGES")

  categorize "LATVIA" "Latvia"

  debug_end "Latvia"

fi