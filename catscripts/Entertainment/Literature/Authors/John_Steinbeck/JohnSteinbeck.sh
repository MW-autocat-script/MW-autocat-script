#!/bin/bash

KEYWORDS_JOHNSTEINBECK="Steinbeck"

if [ "$1" == "" ];
then
  
  debug_start "John Steinbeck"

  . ./catscripts/Entertainment/Literature/Books/Of_Mice_and_Men/OfMiceAndMen.sh norun #KEYWORDS_MICEANDMEN

  KEYWORDS_JOHNSTEINBECK_EXCLUDE="$KEYWORDS_MICEANDMEN"

  STEINBECK=$(egrep -i "$KEYWORDS_JOHNSTEINBECK" "$NEWPAGES" | egrep -iv "$KEYWORDS_JOHNSTEINBECK_EXCLUDE")

  categorize "STEINBECK" "John Steinbeck"

  debug_end "John Steinbeck"

fi