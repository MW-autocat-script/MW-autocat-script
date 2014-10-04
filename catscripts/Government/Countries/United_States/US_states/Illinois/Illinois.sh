#!/bin/bash

KEYWORDS_ILLINOIS="Illinois"
KEYWORDS_SPRINGFIELD="Springfield(|,)(| )Illinois"
KEYWORDS_CHICAGO="Chicago"
KEYWORDS_ILLINOIS_EXCLUDE="$KEYWORDS_CHICAGO|$KEYWORDS_SPRINGFIELD"
KEYWORDS_CHICAGO_EXCLUDE="Chicago(| )Bulls"
KEYWORDS_ILLINOIS_ALL="$KEYWORDS_ILLINOIS|$KEYWORDS_CHICAGO|$KEYWORDS_SPRINGFIELD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Illinois"

  ILLINOIS=$(egrep -i "$KEYWORDS_ILLINOIS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ILLINOIS_EXCLUDE")
  SPRINGFIELD=$(egrep -i "$KEYWORDS_SPRINGFIELD" "$NEWPAGES")
  CHICAGO=$(egrep -i "$KEYWORDS_CHICAGO" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHICAGO_EXCLUDE")

  categorize "ILLINOIS" "Illinois"
  categorize "SPRINGFIELD" "Springfield, Illinois"
  categorize "CHICAGO" "Chicago"

  debug_end "Illinois"

fi