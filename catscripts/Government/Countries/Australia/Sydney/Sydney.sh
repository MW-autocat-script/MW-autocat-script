#!/bin/bash

KEYWORDS_SYDNEY="Sydney(,|)(| )Australia|Sydney Harbo(u|)r|Australia.+Sydney|Sydney.+Australia"
KEYWORDS_OPERAHOUSE="Sydney(| )Opera(| )House"
KEYWORDS_SYDNEY_EXCLUDE="$KEYWORDS_OPERAHOUSE"
KEYWORDS_SYDNEY_ALL="$KEYWORDS_SYDNEY|$KEYWORDS_OPERAHOUSE"

if [ "$1" == "" ];
then

  debug_start "Sydney, Australia"

  SYDNEY=$(egrep -i "$KEYWORDS_SYDNEY" "$NEWPAGES" | egrep -iv "$KEYWORDS_SYDNEY_EXCLUDE")
  OPERA=$(egrep -i "$KEYWORDS_OPERAHOUSE" "$NEWPAGES")

  categorize "SYDNEY" "Sydney, Australia"
  categorize "OPERA" "Sydney Opera House"

  debug_end "Sydney, Australia"

fi