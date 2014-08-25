#!/bin/bash

KEYWORDS_THE39CLUES="39(| )Clue"

if [ "$1" == "" ];
then
  
  debug_start "The 39 Clues"

  CLUES=$(egrep -i "$KEYWORDS_THE39CLUES" "$NEWPAGES")

  categorize "CLUES" "The 39 Clues"

  debug_end "The 39 Clues"

fi