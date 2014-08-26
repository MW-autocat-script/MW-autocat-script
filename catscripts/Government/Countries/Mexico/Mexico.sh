#!/bin/bash

KEYWORDS_MEXICO="'Mexic(o|an)|Tijuana"
KEYWORDS_MEXICO_EXCLUDE="New(| )Mexic(o|an)"
KEYWORDS_MEXICO_ALL="$KEYWORDS_MEXICO"

if [ "$1" == "" ];
then
  
  debug_start "Mexico"

  MEXICO=$(egrep -i "$KEYWORDS_MEXICO" "$NEWPAGES" | egrep -iv "$KEYWORDS_MEXICO_EXCLUDE")

  categorize "MEXICO" "Mexico"

  debug_end "Mexico"

fi