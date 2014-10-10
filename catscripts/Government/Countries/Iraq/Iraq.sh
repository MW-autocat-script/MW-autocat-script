#!/bin/bash

KEYWORDS_IRAQ="Iraq"
KEYWORDS_BAGHDAD="Baghdad"
KEYWORDS_IRAQ_EXCLUDE="$KEYWORDS_BAGHDAD"
KEYWORDS_IRAQ_ALL="$KEYWORDS_IRAQ|$KEYWORDS_BAGHDAD"

if [ "$1" == "" ];
then

  debug_start "Iraq"

  IRAQ=$(egrep -i "$KEYWORDS_IRAQ" "$NEWPAGES" | egrep -iv "$KEYWORDS_IRAQ_EXCLUDE")
  BAGHDAD=$(egrep -i "$KEYWORDS_BAGHDAD" "$NEWPAGES")

  categorize "IRAQ" "Iraq"
  categorize "BAGHDAD" "Baghdad"

  debug_end "Iraq"

fi