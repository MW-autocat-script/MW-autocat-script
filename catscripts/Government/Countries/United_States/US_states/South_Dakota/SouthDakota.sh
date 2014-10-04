#!/bin/bash

KEYWORDS_SOUTHDAKOTA="South(| )Dakota"
KEYWORDS_SOUTHDAKOTA_ALL="$KEYWORDS_SOUTHDAKOTA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "South Dakota"

  SOUTHDAKOTA=$(egrep -i "$KEYWORDS_SOUTHDAKOTA" "$NEWPAGES")

  categorize "SOUTHDAKOTA" "South Dakota"

  debug_end "South Dakota"

fi