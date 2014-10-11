#!/bin/bash

KEYWORDS_PARAGUAY="Paraguay"
KEYWORDS_PARAGUAY_ALL="$KEYWORDS_PARAGUAY"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Paraguay"

  PARAGUAY=$(egrep -i "$KEYWORDS_PARAGUAY" "$NEWPAGES")

  categorize "PARAGUAY" "Paraguay"

  debug_end "Paraguay"

fi
