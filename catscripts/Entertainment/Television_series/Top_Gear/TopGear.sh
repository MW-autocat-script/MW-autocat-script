#!/bin/bash

KEYWORDS_TOPGEAR="Top(| )Gear|\bstig\b"

if [ "$1" == "" ];
then
  
  debug_start "Top Gear"

  TOPGEAR=$(egrep -i "$KEYWORDS_TOPGEAR" "$NEWPAGES")

  categorize "TOPGEAR" "Top Gear"

  debug_end "Top Gear"

fi