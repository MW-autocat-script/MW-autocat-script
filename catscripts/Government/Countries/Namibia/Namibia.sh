#!/bin/bash

KEYWORDS_NAMIBIA="Namibia"
KEYWORDS_NAMIBIA_ALL="$KEYWORDS_NAMIBIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Namibia"

  NAMIBIA=$(egrep -i "$KEYWORDS_NAMIBIA" "$NEWPAGES")

  categorize "NAMIBIA" "Namibia"

  debug_end "Namibia"

fi
