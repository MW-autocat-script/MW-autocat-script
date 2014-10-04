#!/bin/bash

KEYWORDS_ATLANTA="Atlanta"
KEYWORDS_ATLANTA_EXCLUDE="Atlanta(| )Braves"
KEYWORDS_GEORGIA="Georgia|, GA\b"
KEYWORDS_GEORGIA_EXCLUDE="(Country|Republic)(| )of(| )Georgia|$KEYWORDS_ATLANTA"
KEYWORDS_GEORGIA_ALL="$KEYWORDS_GEORGIA|$KEYWORDS_ATLANTA"

if [ "$1" == "" ];
then

  debug_start "Georgia"

  GEORGIA=$(egrep -i "$KEYWORDS_GEORGIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEORGIA_EXCLUDE")
  ATLANTA=$(egrep -i "$KEYWORDS_ATLANTA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ATLANTA_EXCLUDE")

  categorize "GEORGIA" "Georgia"
  categorize "ATLANTA" "Atlanta"

  debug_end "Georgia"

fi