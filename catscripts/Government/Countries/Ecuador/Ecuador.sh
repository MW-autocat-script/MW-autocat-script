#!/bin/bash

KEYWORDS_ECUADOR="Ecuador"
KEYWORDS_ECUADOR_ALL="$KEYWORDS_ECUADOR"

if [ "$1" == "" ];
then

  debug_start "Ecuador"

  ECUADOR=$(egrep -i "$KEYWORDS_ECUADOR" "$NEWPAGES")

  categorize "ECUADOR" "Ecuador"

  debug_end "Ecuador"

fi