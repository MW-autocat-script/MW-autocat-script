#!/bin/bash

KEYWORDS_MAINE="\bMaine"
KEYWORDS_MAINE_ALL="$KEYWORDS_MAINE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Maine"

  MAINE=$(egrep -i "$KEYWORDS_MAINE" "$NEWPAGES")

  categorize "MAINE" "Maine"

  debug_end "Maine"

fi