#!/bin/bash

KEYWORDS_DICKKINGSMITH="Dick(| )King(|-| )Smith"
KEYWORDS_DICKKINGSMITH_ALL="$KEYWORDS_DICKKINGSMITH"

if [ "$1" == "" ];
then
  
  debug_start "Dick King-Smith"

  DICKKINGSMITH=$(egrep -i "$KEYWORDS_DICKKINGSMITH" "$NEWPAGES")

  categorize "DICKKINGSMITH" "Dick King-Smith"

  debug_end "Dick King-Smith"

fi