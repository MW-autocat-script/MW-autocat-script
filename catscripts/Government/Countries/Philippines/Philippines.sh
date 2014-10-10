#!/bin/bash

KEYWORDS_PHILIPPINES="Phil(|l)ip(|p)ine|Luzon"
KEYWORDS_PNPA="PNPA|Philippine(| )National(| )Police(| )Academy"
KEYWORDS_PHILIPPINES_EXCLUDE="$KEYWORDS_PNPA|Philippine(| )literature"

if [ "$1" == "" ];
then

  debug_start "Philippines"

  PHILIPPINES=$(egrep -i "$KEYWORDS_PHILIPPINES" "$NEWPAGES" | egrep -iv "$KEYWORDS_PHILIPPINES_EXCLUDE" )
  PNPA=$(egrep -i "$KEYWORDS_PNPA" "$NEWPAGES")

  categorize "PHILIPPINES" "Philippines"
  categorize "PNPA" "PNPA"

  debug_end "Philippines"

fi