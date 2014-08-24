#!/bin/bash

KEYWORDS_IOWA="\bIowa"
KEYWORDS_IOWA_ALL="$KEYWORDS_IOWA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Iowa"

  IOWA=$(egrep -i "$KEYWORDS_IOWA" "$NEWPAGES")

  categorize "IOWA" "Iowa"

  debug_end "Iowa"

fi