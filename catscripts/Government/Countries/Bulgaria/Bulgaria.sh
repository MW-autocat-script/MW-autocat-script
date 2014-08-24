#!/bin/bash

KEYWORDS_BULGARIA="Bulgaria"

if [ "$1" == "" ];
then

  debug_start "Bulgaria"

  BULGARIA=$(egrep -i "$KEYWORDS_BULGARIA" "$NEWPAGES")

  categorize "BULGARIA" "Bulgaria"

  debug_end "Bulgaria"

fi