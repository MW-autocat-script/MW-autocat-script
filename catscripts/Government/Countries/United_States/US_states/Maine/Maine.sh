#!/bin/bash

KEYWORDS_MAINE="\bMaine"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Maine"

  MAINE=$(egrep -i "$KEYWORDS_MAINE" "$NEWPAGES")

  categorize "MAINE" "Maine"

  debug_end "Maine"

fi