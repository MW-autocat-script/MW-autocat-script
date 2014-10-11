#!/bin/bash

KEYWORDS_SLOVAKIA="Slovakia(|s)\b"
KEYWORDS_SLOVAKIA_ALL="$KEYWORDS_SLOVAKIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Slovakia"

  SLOVAKIA=$(egrep -i "$KEYWORDS_SLOVAKIA" "$NEWPAGES")

  categorize "SLOVAKIA" "Slovakia"

  debug_end "Slovakia"

fi