#!/bin/bash

KEYWORDS_SHREK="\bShrek"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Shrek"

  SHREK="$(egrep -i "$KEYWORDS_SHREK" "$NEWPAGES")"

  categorize "SHREK" "Shrek"

  debug_end "Shrek"

fi