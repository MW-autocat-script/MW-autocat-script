#!/bin/bash

KEYWORDS_SYRIA="\bSyria"
KEYWORDS_SYRIA_EXCLUDE="ham(|p)ster"
KEYWORDS_SYRIA_ALL="$KEYWORDS_SYRIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Syria"

  SYRIA=$(egrep -i "$KEYWORDS_SYRIA" "$NEWPAGES"| egrep -i "$KEYWORDS_SYRIA_EXCLUDE")

  categorize "SYRIA" "Syria"

  debug_end "Syria"

fi