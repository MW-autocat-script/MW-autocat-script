#!/bin/bash

KEYWORDS_SIKHISM="\bSikh"
KEYWORDS_SIKHISM_ALL="$KEYWORDS_SIKHISM"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Sikhism"

  SIKHISM=$(egrep -i "$KEYWORDS_SIKHISM" "$NEWPAGES")

  categorize "SIKHISM" "Sikhism"

  debug_end "Sikhism"

fi
