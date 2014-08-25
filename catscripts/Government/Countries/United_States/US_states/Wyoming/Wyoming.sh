#!/bin/bash

KEYWORDS_WYOMING="Wyoming"
KEYWORDS_WYOMING_ALL="$KEYWORDS_WYOMING"

if [ "$1" == "" ];
then
  
  debug_start "Wyoming"

  WYOMING=$(egrep -i "$KEYWORDS_WYOMING" "$NEWPAGES")

  categorize "WYOMING" "Wyoming"

  debug_end "Wyoming"

fi