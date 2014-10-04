#!/bin/bash

KEYWORDS_OKLAHOMA="Oklahoma|Tulsa"
KEYWORDS_OKLAHOMACITY="Oklahoma(| )City"
KEYWORDS_OKLAHOMA_EXCLUDE="$KEYWORDS_OKLAHOMACITY"
KEYWORDS_OKLAHOMA_ALL="$KEYWORDS_OKLAHOMA|$KEYWORDS_OKLAHOMACITY"

if [ "$1"  == "" ]; #Normal operation
then

  debug_start "Oklahoma"

  OKLAHOMA=$(egrep -i "$KEYWORDS_OKLAHOMA" "$NEWPAGES" | egrep -iv "$KEYWORDS_OKLAHOMA_EXCLUDE")
  OKCITY=$(egrep -i "$KEYWORDS_OKLAHOMACITY" "$NEWPAGES")

  categorize "OKLAHOMA" "Oklahoma"
  categorize "OKCITY" "Oklahoma City"

  debug_end "Oklahoma"

fi