#!/bin/bash

KEYWORDS_WISCONSIN="Wisconsin"
KEYWORDS_MILWAUKEE="Milwaukee"
KEYWORDS_WISCONSIN_EXCLUDE="$KEYWORDS_MILWAUKEE"
KEYWORDS_WISCONSIN_ALL="$KEYWORDS_WISCONSIN|$KEYWORDS_MILWAUKEE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wisconsin"

  WISCONSIN=$(egrep -i "$KEYWORDS_WISCONSIN" "$NEWPAGES" | egrep -iv "$KEYWORDS_WISCONSIN_EXCLUDE")
  MILWAUKEE=$(egrep -i "$KEYWORDS_MILWAUKEE" "$NEWPAGES")

  categorize "WISCONSIN" "Wisconsin"
  categorize "MILWAUKEE" "Milwaukee"

  debug_end "Wisconsin"

fi