#!/bin/bash

KEYWORDS_AUTORACING="(auto|car|truck|vehicle)_(race|racing)"
KEYWORDS_NASCAR="NASCAR|Jeff(| )Gordon|Dale(| )Earnhardt|Kyle(| )Petty"
KEYWORDS_AUTORACING_EXCLUDE="$KEYWORDS_NASCAR"

if [ "$1" == "" ];
then

  debug_start "Auto racing"

  AUTORACING=$(egrep -i "$KEYWORDS_AUTORACING" "$NEWPAGES" | egrep -iv "$KEYWORDS_AUTORACING_EXCLUDE")
  NASCAR=$(egrep -i "$KEYWORDS_NASCAR" "$NEWPAGES")

  categorize "AUTORACING" "Auto racing"
  categorize "NASCAR" "NASCAR"

  debug_end "Auto racing"

fi