#!/bin/bash

KEYWORDS_KENTUCKY="Kentucky"
KEYWORDS_KENTUCKY_EXCLUDE="Kentucky(| )Fried(| )Chicken"
KEYWORDS_KENTUCKY_ALL="$KEYWORDS_KENTUCKY"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Kentucky"

  KENTUCKY=$(egrep -i "$KEYWORDS_KENTUCKY" "$NEWPAGES" | egrep -iv "$KEYWORDS_KENTUCKY_EXCLUDE")

  categorize "KENTUCKY" "Kentucky"

  debug_end "Kentucky"

fi