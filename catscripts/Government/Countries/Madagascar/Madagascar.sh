#!/bin/bash

KEYWORDS_MADAGASCAR="Madagascar"
KEYWORDS_MADAGASCAR_ALL="$KEYWORDS_MADAGASCAR"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Madagascar"

  MADAGASCAR=$(egrep -i "$KEYWORDS_MADAGASCAR" "$NEWPAGES")

  categorize "MADAGASCAR" "Madagascar"

  debug_end "Madagascar"

fi