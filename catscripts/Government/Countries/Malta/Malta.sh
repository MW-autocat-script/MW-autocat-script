#!/bin/bash

KEYWORDS_MALTA="Malta(|s)\b"
KEYWORDS_MALTA_ALL="$KEYWORDS_MALTA"

if [ "$1" == "" ];
then
  
  debug_start "Malta"

  MALTA=$(egrep -i "$KEYWORDS_MALTA" "$NEWPAGES")

  categorize "MALTA" "Malta"

  debug_end "Malta"

fi