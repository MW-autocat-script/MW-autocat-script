#!/bin/bash

KEYWORDS_NEVADA="Nevada"
KEYWORDS_LASVEGAS="Las(| )Vegas"
KEYWORDS_NEVADA_EXCLUDE="$KEYWORDS_LASVEGAS"
KEYWORDS_NEVADA_ALL="$KEYWORDS_LASVEGAS|$KEYWORDS_NEVADA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Nevada"

  NEVADA=$(egrep -i "$KEYWORDS_NEVADA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NEVADA_EXCLUDE")
  LASVEGAS=$(egrep -i "$KEYWORDS_LASVEGAS" "$NEWPAGES")

  categorize "NEVADA" "Nevada"
  categorize "LASVEGAS" "Las Vegas"

  debug_end "Nevada"

fi
