#!/bin/bash

KEYWORDS_INDONESIA="Indonesia(|s)\b|Sulawesi"
KEYWORDS_INDONESIA_ALL="$KEYWORDS_INDONESIA"

if [ "$1" == "" ];
then
  
  debug_start "Indonesia"

  INDONESIA=$(egrep -i "$KEYWORDS_INDONESIA" "$NEWPAGES")

  categorize "INDONESIA" "Indonesia"

  debug_end "Indonesia"

fi
