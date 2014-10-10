#!/bin/bash

KEYWORDS_SWITZERLAND="Switzerland|Swiss"
KEYWORDS_GENEVA="Geneva"
KEYWORDS_ZURICH="Zurich"
KEYWORDS_SWITZERLAND_EXCLUDE="$KEYWORDS_GENEVA|$KEYWORDS_ZURICH"

if [ "$1" == "" ];
then
  
  debug_start "Switzerland"

  SWITZERLAND=$(egrep -i "$KEYWORDS_SWITZERLAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_SWITZERLAND_EXCLUDE")
  GENEVA=$(egrep -i "$KEYWORDS_GENEVA" "$NEWPAGES")
  ZURICH=$(egrep -i "$KEYWORDS_ZURICH" "$NEWPAGES")

  categorize "SWITZERLAND" "Switzerland"
  categorize "GENEVA" "Geneva"
  categorize "ZURICH" "Zurich"

  debug_end "Switzerland"

fi