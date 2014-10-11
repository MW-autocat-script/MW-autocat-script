#!/bin/bash

KEYWORDS_SANMARINO="San(| )Marino"
KEYWORDS_SANMARINO_ALL="$KEYWORDS_SANMARINO"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "San Marino"

  SANMARINO=$(egrep -i "$KEYWORDS_SANMARINO" "$NEWPAGES")

  categorize "SANMARINO" "San Marino"

  debug_end "San Marino"

fi