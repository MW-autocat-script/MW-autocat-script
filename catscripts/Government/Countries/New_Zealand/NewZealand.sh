#!/bin/bash

KEYWORDS_NEWZEALAND="New(| )Zealand|\bNZ\b"
KEYWORDS_NEWZEALAND_ALL="$KEYWORDS_NEWZEALAND"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "New Zealand"

  NEWZEALAND=$(egrep -i "$KEYWORDS_NEWZEALAND" "$NEWPAGES")

  categorize "NEWZEALAND" "New Zealand"

  debug_end "New Zealand"

fi
