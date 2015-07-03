#!/bin/bash

KEYWORDS_CPROGRAMMING="\bC program|\bin C\b|\bC language"
KEYWORDS_CPROGRAMMING_ALL="$KEYWORDS_CPROGRAMMING"

if [ "$1" == "" ];
then
  
  debug_start "C programming"

  CPROGRAMMING=$(egrep -i "$KEYWORDS_CPROGRAMMING" "$NEWPAGES")

  categorize "CPROGRAMMING" "C programming"

  debug_end "C programming"

fi
