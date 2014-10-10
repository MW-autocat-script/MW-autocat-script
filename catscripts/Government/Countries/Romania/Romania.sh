#!/bin/bash

KEYWORDS_ROMANIA="\bRomania"
KEYWORDS_ROMANIA_EXCLUDE="Romanian"
KEYWORDS_ROMANIA_ALL="$KEYWORDS_ROMANIA_ALL"

if [ "$1" == "" ];
then
  
  debug_start "Romania"

  ROMANIA=$(egrep -i "$KEYWORDS_ROMANIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ROMANIA_EXCLUDE")

  categorize "ROMANIA" "Romania"

  debug_end "Romania"

fi