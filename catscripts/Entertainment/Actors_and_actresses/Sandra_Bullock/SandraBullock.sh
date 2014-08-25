#!/bin/bash

KEYWORDS_ACTRESS_SANDRABULLOCK="Sandra(| )Bullock"

if [ "$1" == "" ];
then

  debug_start "Sandra Bullock"

  BULLOCK=$(egrep -i "$KEYWORDS_ACTRESS_SANDRABULLOCK" "$NEWPAGES")

  categorize "BULLOCK" "Sandra Bullock"

  debug_end "Sandra Bullock"

fi