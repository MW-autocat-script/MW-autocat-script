#!/bin/bash

KEYWORDS_CAMBODIA="Cambodia\b|Khmer(| )Rouge|Phnom(| )Penh"
KEYWORDS_CAMBODIA_ALL="$KEYWORDS_CAMBODIA"

if [ "$1" == "" ];
then
  
  debug_start "Cambodia"

  CAMBODIA=$(egrep -i "$KEYWORDS_CAMBODIA" "$NEWPAGES")

  categorize "CAMBODIA" "Cambodia"

  debug_end "Cambodia"

fi