#!/bin/bash

KEYWORDS_MASSACHUSETTS="Massachusetts"
KEYWORDS_BOSTON="Boston"
KEYWORDS_BOSTON_EXCLUDE="Boston(| )(creame|creme)(| )pie"
KEYWORDS_MASSACHUSETTS_EXCLUDE="$KEYWORDS_BOSTON"
KEYWORDS_MASSACHUSETTS_ALL="$KEYWORDS_MASSACHUSETTS|$KEYWORDS_BOSTON"

if [ "$1" == "" ];
then

  debug_start  "Massachusetts"

  MASSACHUSETTS=$(egrep -i "$KEYWORDS_MASSACHUSETTS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MASSACHUSETTS_EXCLUDE")
  BOSTON=$(egrep -i "$KEYWORDS_BOSTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_BOSTON_EXCLUDE")

  categorize "MASSACHUSETTS" "Massachusetts"
  categorize "BOSTON" "Boston"

  debug_end "Massachusetts"

fi