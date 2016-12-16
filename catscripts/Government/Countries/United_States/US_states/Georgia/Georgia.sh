#!/bin/bash

KEYWORDS_ATLANTA="Atlanta"
KEYWORDS_ATLANTA_EXCLUDE="Atlanta(| )Braves"
KEYWORDS_ATHENSGEORGIA="Athens(,|)(| )Georgia"
KEYWORDS_GEORGIA="Georgia|, GA\b"
KEYWORDS_GEORGIA_EXCLUDE="(Country|Republic)(| )of(| )Georgia|$KEYWORDS_ATLANTA|$KEYWORDS_ATHENSGEORGIA"
KEYWORDS_GEORGIA_ALL="$KEYWORDS_GEORGIA|$KEYWORDS_ATLANTA|$KEYWORDS_ATHENSGEORGIA"

if [ "$1" == "" ];
then

  debug_start "Georgia"

  GEORGIA=$(egrep -i "$KEYWORDS_GEORGIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEORGIA_EXCLUDE")
  ATLANTA=$(egrep -i "$KEYWORDS_ATLANTA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ATLANTA_EXCLUDE")
  ATHENSGEORGIA=$(egrep -i "$KEYWORDS_ATHENSGEORGIA" "$NEWPAGES")

  categorize "GEORGIA" "Georgia"
  categorize "ATLANTA" "Atlanta"
  categorize "ATHENSGEORGIA" "Athens, Georgia"

  debug_end "Georgia"

fi