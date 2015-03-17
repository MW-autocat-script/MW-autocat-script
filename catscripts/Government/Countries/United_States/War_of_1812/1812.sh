#!/bin/bash

KEYWORDS_1812="War(| )of(| )1812|Treaty(| )of(| )Ghent"
KEYWORDS_1812_ALL="$KEYWORDS_1812"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "War of 1812"

  WAROF1812=$(egrep -i "$KEYWORDS_1812" "$NEWPAGES")
  categorize "$WAROF1812" "War of 1812"

  debug_end "War of 1812"

fi