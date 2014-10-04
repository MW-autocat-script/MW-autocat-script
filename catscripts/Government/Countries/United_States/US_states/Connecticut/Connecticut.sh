#!/bin/bash

KEYWORDS_CONNECTICUT="Connecticut|Hartford|,(| )CT\b"
KEYWORDS_CONNECTICUT_ALL="$KEYWORDS_CONNECTICUT"

if [ "$1" == "" ];
then

  debug_start "Connecticut"

  CONNECTICUT=$(egrep -i "$KEYWORDS_CONNECTICUT" "$NEWPAGES")

  categorize "CONNECTICUT" "Connecticut"

  debug_end "Connecticut"

fi