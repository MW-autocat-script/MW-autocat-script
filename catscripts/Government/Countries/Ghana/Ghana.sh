#!/bin/bash

KEYWORDS_GHANA="\bGhana"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Ghana"

  GHANA=$(egrep -i "$KEYWORDS_GHANA" "$NEWPAGES")

  categorize "GHANA" "Ghana"

  debug_end "Ghana"

fi