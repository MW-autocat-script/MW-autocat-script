#!/bin/bash

KEYWORDS_NEBRASKA="Nebraska"

if [ "$1" == "" ];
then

  debug_start "Nebraska"

  NEBRASKA=$(egrep -i "$KEYWORDS_NEBRASKA" "$NEWPAGES")

  categorize "NEBRASKA" "Nebraska"

  debug_end "Nebraska"

fi