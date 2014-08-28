#!/bin/bash

KEYWORDS_HINDUISM="Hindu(|s)\b|Hinduism"
KEYWORDS_HINDUISM_ALL="$KEYWORDS_HINDUISM"

if [ "$1" == "" ];
then
  
  debug_start "Hinduism"

  HINDUISM=$(egrep -i "$KEYWORDS_HINDUISM" "$NEWPAGES")

  categorize "HINDUISM" "Hinduism"

  debug_end "Hinduism"

fi