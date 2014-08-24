#!/bin/bash

KEYWORDS_PERIOD="\.$"
KEYWORDS_PERIOD_EXCLUDE="\b(j|s)r\.$|\bD\.C\.$"

if [ "$1" == "" ];
then
  
  debug_start "Page titles ending in a period"

  PERIOD=$(egrep -i "$KEYWORDS_PERIOD" "$NEWPAGES" | egrep -iv "$KEYWORDS_PERIOD_EXCLUDE")

  categorize "PERIOD" "Page titles ending in a period"

  debug_end "Page titles ending in a period"

fi