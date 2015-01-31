#!/bin/bash

KEYWORDS_NEBRASKA="Nebraska"
KEYWORDS_NEBRASKA_ALL="$KEYWORDS_NEBRASKA"

if [ "$1" == "" ];
then

  debug_start "Nebraska"

  NEBRASKA=$(egrep -i "$KEYWORDS_NEBRASKA" "$NEWPAGES")

  categorize "NEBRASKA" "Nebraska"

  debug_end "Nebraska"

fi