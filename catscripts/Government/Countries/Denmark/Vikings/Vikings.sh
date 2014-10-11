#!/bin/bash

export KEYWORDS_VIKINGS="Viking"
export KEYWORDS_VIKINGS_EXCLUDE="Minnesota(| )Vikings"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Vikings"

  VIKINGS=$(egrep -i "$KEYWORDS_VIKINGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIKINGS_EXCLUDE")

  categorize "VIKINGS" "Vikings"

  debug_end "Vikings"

fi