#!/bin/bash

KEYWORDS_DELAWARE="Delaware|,(| )DE( |$)"
KEYWORDS_DELAWARE_ALL="$KEYWORDS_DELAWARE"

if [ "$1" == "" ];
then

  debug_start "Delaware"

  DELAWARE=$(egrep -i "$KEYWORDS_DELAWARE" "$NEWPAGES")

  categorize "DELAWARE" "Delaware"

  debug_end "Delaware"

fi