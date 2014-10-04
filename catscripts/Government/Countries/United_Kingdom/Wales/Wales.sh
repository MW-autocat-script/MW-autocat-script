#!/bin/bash

KEYWORDS_WALES="Wales"
KEYWORDS_CARDIFF="Cardiff"
KEYWORDS_WALES_EXCLUDE="$KEYWORDS_CARDIFF|Jim(|bo|my)(| )Wales|New(| )South(| )Wales"
KEYWORDS_WALES_ALL="$KEYWORDS_WALES|$KEYWORDS_CARDIFF"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wales"

  WALES=$(egrep -i "$KEYWORDS_WALES" "$NEWPAGES" | egrep -iv "$KEYWORDS_WALES_EXCLUDE")
  CARDIFF=$(egrep -i "$KEYWORDS_CARDIFF" "$NEWPAGES")

  categorize "WALES" "Wales"
  categorize "CARDIFF" "Cardiff"

  debug_end "Wales"

fi