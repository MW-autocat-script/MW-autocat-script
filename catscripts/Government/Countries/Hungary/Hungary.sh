#!/bin/bash

KEYWORDS_HUNGARY="Hungary"
KEYWORDS_HUNGARY_EXCLUDE="Austria( |-)Hungary"
KEYWORDS_HUNGARY_ALL="$KEYWORDS_HUNGARY"

if [ "$1" == "" ];
then
  
  debug_start "Hungary"

  HUNGARY=$(egrep -i "$KEYWORDS_HUNGARY" "$NEWPAGES" | egrep -iv "$KEYWORDS_HUNGARY_EXCLUDE")

  categorize "HUNGARY" "Hungary"

  debug_end "Hungary"

fi