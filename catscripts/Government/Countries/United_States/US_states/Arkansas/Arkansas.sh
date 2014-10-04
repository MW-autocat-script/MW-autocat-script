#!/bin/bash

KEYWORDS_ARKANSAS="Arkansas|,(| )AR( |$)"
KEYWORDS_ARKANSAS_ALL="$KEYWORDS_ARKANSAS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Arkansas"

  ARKANSAS=$(egrep -i "$KEYWORDS_ARKANSAS" "$NEWPAGES")

  categorize "ARKANSAS" "Arkansas"

  debug_end "Arkansas"

fi