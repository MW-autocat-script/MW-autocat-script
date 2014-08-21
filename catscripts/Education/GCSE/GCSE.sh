#!/bin/bash

KEYWORDS_GCSE="GCSE|General Certificate of Secondary Education"
KEYWORDS_GCSE_ALL="$KEYWORDS_GCSE"

if [ "$1" == "" ];
then
  
  debug_start "GCSE"

  GCSE=$(egrep -i "$KEYWORDS_GCSE" "$NEWPAGES")

  categorize "GCSE" "GCSE"

  debug_end "GCSE"

fi