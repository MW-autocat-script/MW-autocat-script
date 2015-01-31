#!/bin/bash

KEYWORDS_KANSAS="\bKansas"
KEYWORDS_KANSAS_ALL="$KEYWORDS_KANSAS"

if [ "$1" == "" ];
then

  debug_start "Kansas"

  KANSAS=$(egrep -i "$KEYWORDS_KANSAS" "$NEWPAGES")

  categorize "KANSAS" "Kansas"

  debug_end "Kansas"

fi