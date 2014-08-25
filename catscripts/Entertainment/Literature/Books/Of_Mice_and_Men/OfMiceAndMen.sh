#!/bin/bash

KEYWORDS_MICEANDMEN="Mice(| )and(| )Men"

if [ "$1" == "" ];
then
  
  debug_start "Of Mice and Men"

  MICEMEN=$(egrep -i "$KEYWORDS_MICEANDMEN" "$NEWPAGES")

  categorize "MICEMEN" "Of Mice and Men"

  debug_end "Of Mice and Men"

fi