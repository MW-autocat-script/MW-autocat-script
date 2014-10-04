#!/bin/bash

KEYWORDS_SCOTLAND="Scotland"
KEYWORDS_SCOTLAND_ALL="$KEYWORDS_SCOTLAND"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Scotland"

  SCOTLAND=$(egrep -i "$KEYWORDS_SCOTLAND" "$NEWPAGES")

  categorize "SCOTLAND" "Scotland"

  debug_end "Scotland"

fi