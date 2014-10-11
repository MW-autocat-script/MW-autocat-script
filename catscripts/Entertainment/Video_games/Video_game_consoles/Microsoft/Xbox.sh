#!/bin/bash

KEYWORDS_XBOX="X(|-)box"
KEYWORDS_XBOX_EXCLUDE="X(|-)box(| )(1\b|360|One|Live)"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Xbox"

  XBOX=$(egrep -i "$KEYWORDS_XBOX" "$NEWPAGES" | egrep -iv "$KEYWORDS_XBOX_EXCLUDE")

  categorize "XBOX" "Xbox"

  debug_end "Xbox"

fi