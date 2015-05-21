#!/bin/bash

KEYWORDS_COOKISLANDS="Cook(| )Island|Avarua"
KEYWORDS_COOKISLANDS_ALL="$KEYWORDS_COOKISLANDS"

if [ "$1" == "" ];
then
  
  debug_start "Cook Islands"

  COOKISLANDS=$(egrep -i "$KEYWORDS_COOKISLANDS" "$NEWPAGES")

  categorize "COOKISLANDS" "Cook Islands"

  debug_end "Cook Islands"

fi