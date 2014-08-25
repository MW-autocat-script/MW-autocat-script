#!/bin/bash

KEYWORDS_FINLAND="Finland|Helsinki"
KEYWORDS_FINLAND_ALL="$KEYWORDS_FINLAND"

if [ "$1" == "" ];
then
  
  debug_start "Finland"

  FINLAND=$(egrep -i "$KEYWORDS_FINLAND" "$NEWPAGES")

  categorize "FINLAND" "Finland"

  debug_end "Finland"

fi