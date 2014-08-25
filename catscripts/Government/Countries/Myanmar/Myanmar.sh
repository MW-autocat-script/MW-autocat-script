#!/bin/bash

KEYWORDS_MYANMAR="Myanmar|Burma"
KEYWORDS_MYANMAR_ALL="$KEYWORDS_MYANMAR"

if [ "$1" == "" ];
then
  
  debug_start "Myanmar"

  MYANMAR=$(egrep -i "$KEYWORDS_MYANMAR" "$NEWPAGES")

  categorize "MYANMAR" "Myanmar"

  debug_end "Myanmar"

fi