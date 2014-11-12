#!/bin/bash

KEYWORDS_ENGLISHTODANISH="How(| )do(| )you(| )(say|spell).+in(| )Danish|Danish(| )word(| )for"
KEYWORDS_ENGLISHTODANISH_ALL="$KEYWORDS_ENGLISHTODANISH"

if [ "$1" == "" ];
then
  
  debug_start "English to Danish"

  DANISH=$(egrep -i "$KEYWORDS_ENGLISHTODANISH" "$NEWPAGES")

  categorize "DANISH" "English to Danish"

  debug_end "English to Danish"

fi