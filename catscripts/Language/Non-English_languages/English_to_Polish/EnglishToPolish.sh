#!/bin/bash

KEYWORDS_ENGLISHTOPOLISH="How(| )do(| )you(| )say.+in(| )Polish|Polish(| )word(| )for"
KEYWORDS_ENGLISHTOPOLISH_ALL="$KEYWORDS_ENGLISHTOPOLISH"

if [ "$1" == "" ];
then
  
  debug_start "English to Polish"

  POLISH=$(egrep -i "$KEYWORDS_ENGLISHTOPOLISH" "$NEWPAGES")

  categorize "POLISH" "English to Polish"

  debug_end "English to Polish"

fi