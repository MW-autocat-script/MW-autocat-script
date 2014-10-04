#!/bin/bash

KEYWORDS_NORTHDAKOTA="North(| )Dakota"
KEYWORDS_NORTHDAKOTA_ALL="$KEYWORDS_NORTHDAKOTA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "North Dakota"

  NORTHDAKOTA=$(egrep -i "$KEYWORDS_NORTHDAKOTA" "$NEWPAGES")

  categorize "NORTHDAKOTA" "North Dakota"

  debug_end "North Dakota"

fi