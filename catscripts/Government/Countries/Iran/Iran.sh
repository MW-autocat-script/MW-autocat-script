#!/bin/bash

KEYWORDS_IRAN="\bIran|Tehran"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Iran"

  IRAN=$(egrep -i "$KEYWORDS_IRAN" "$NEWPAGES")

  categorize "IRAN" "Iran"

  debug_end "Iran"

fi