#!/bin/bash

KEYWORDS_ENGLISHTODUTCH="How(| )do(| )you(say|spell).+in(| )Dutch|Dutch(| )word(| )for"
KEYWORDS_ENGLISHTODUTCH_ALL="$KEYWORDS_ENGLISHTODUTCH"

if [ "$1" == "" ];
then
  
  debug_start "English to Dutch"

  DUTCH=$(egrep -i "$KEYWORDS_ENGLISHTODUTCH" "$NEWPAGES")

  categorize "DUTCH" "English to Dutch"

  debug_end "English to Dutch"

fi