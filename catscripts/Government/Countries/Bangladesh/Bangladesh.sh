#!/bin/bash

KEYWORDS_BANGLADESH="Bangladesh"
KEYWORDS_BANGLADESH_ALL="$KEYWORDS_BANGLADESH"

if [ "$1" == "" ];
then

  debug_start "Bangladesh"

  BANGLADESH=$(egrep -i "$KEYWORDS_BANGLADESH" "$NEWPAGES")

  categorize "BANGLADESH" "Bangladesh"

  debug_end "Bangladesh"

fi