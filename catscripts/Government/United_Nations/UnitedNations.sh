#!/bin/bash

KEYWORDS_UNITEDNATIONS="United(| )Nations|\bU(|\.)N(|\.)\b"
KEYWORDS_UNITEDNATIONS_EXCLUDE="\bun-\b" #Because people are dumb
KEYWORDS_UNITEDNATIONS_ALL="$KEYWORDS_UNITEDNATIONS"

if [ "$1" == "" ]; #normal operation
then

  debug_start "United Nations"

  UNITED=$(egrep -i "$KEYWORDS_UNITEDNATIONS" "$NEWPAGES" | egrep -i "$KEYWORDS_UNITEDNATIONS_EXCLUDE")

  categorize "UNITED" "United Nations"

  debug_end "United Nations"

fi