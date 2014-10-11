#!/bin/bash

KEYWORDS_LUXEMBOURG="Luxembourg"
KEYWORDS_LUXEMBOURG_ALL="$KEYWORDS_LUXEMBOURG"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Luxembourg"

  LUXEMBOURG=$(egrep -i "$KEYWORDS_LUXEMBOURG" "$NEWPAGES")

  categorize "LUXEMBOURG" "Luxembourg"

  debug_end "Luxembourg"

fi