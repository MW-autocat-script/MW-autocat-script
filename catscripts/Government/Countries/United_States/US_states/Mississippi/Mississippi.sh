#!/bin/bash

KEYWORDS_MISSISSIPPI="Mississippi"
KEYWORDS_MISSISSIPPI_ALL="$KEYWORDS_MISSISSIPPI"

if [ "$1" == "" ];
then

  debug_start "Mississippi"

  MISSISSIPPI=$(egrep -i "$KEYWORDS_MISSISSIPPI" "$NEWPAGES")

  categorize "MISSISSIPPI" "Mississippi"

  debug_end "Mississippi"

fi