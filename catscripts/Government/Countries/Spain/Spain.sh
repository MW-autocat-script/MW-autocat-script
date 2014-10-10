#!/bin/bash

KEYWORDS_SPAIN="Spain"
KEYWORDS_BARCELONA="Barcelona"
KEYWORDS_MADRID="Madrid"
KEYWORDS_SPAIN_EXCLUDE="$KEYWORDS_BARCELONA|$KEYWORDS_MADRID"

if [ "$1" == "" ];
then

  debug_start "Spain"

  SPAIN=$(egrep -i "$KEYWORDS_SPAIN" "$NEWPAGES" | egrep -iv "$KEYWORDS_SPAIN_EXCLUDE")
  BARCELONA=$(egrep -i "$KEYWORDS_BARCELONA" "$NEWPAGES")
  MADRID=$(egrep -i "$KEYWORDS_MADRID" "$NEWPAGES")

  categorize "SPAIN" "Spain"
  categorize "BARCELONA" "Barcelona"
  categorize "MADRID" "Madrid"

  debug_end "Spain"

fi