#!/bin/bash

KEYWORDS_ZIMBABWE="Zimbabwe"
KEYWORDS_ZIMBABWE_ALL="$KEYWORDS_ZIMBABWE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Zimbabwe"

  ZIMBABWE=$(egrep -i "$KEYWORDS_ZIMBABWE" "$NEWPAGES")

  categorize "ZIMBABWE" "Zimbabwe"

  debug_end "Zimbabwe"

fi