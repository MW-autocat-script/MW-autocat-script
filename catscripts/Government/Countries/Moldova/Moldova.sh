#!/bin/bash

KEYWORDS_MOLDOVA="Moldova"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Moldova"

  MOLDOVA=$(egrep -i "$KEYWORDS_MOLDOVA" "$NEWPAGES")

  categorize "MOLDOVA" "Moldova"

  debug_end "Moldova"

fi