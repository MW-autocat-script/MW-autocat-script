#!/bin/bash

KEYWORDS_BOLIVIA="Bolivia"
KEYWORDS_BOLIVIA_ALL="$KEYWORDS_BOLIVIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Bolivia"

  BOLIVIA=$(egrep -i "$KEYWORDS_BOLIVIA" "$NEWPAGES")

  categorize "BOLIVIA" "Bolivia"

  debug_end "Bolivia"

fi