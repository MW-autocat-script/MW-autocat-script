#!/bin/bash

KEYWORDS_KANSAS="\bKansas"

if [ "$1" == "" ];
then

  debug_start "Kansas"

  KANSAS=$(egrep -i "$KEYWORDS_KANSAS" "$NEWPAGES")

  categorize "KANSAS" "Kansas"

  debug_end "Kansas"

fi