#!/bin/bash

KEYWORDS_ENGLISHTOJAPANESE="How(| )do(| )you(| )(say|spell|write).+in(| )Japanese|Japanese(| )word(| )for"
KEYWORDS_ENGLISHTOJAPANESE_ALL="$KEYWORDS_ENGLISHTOJAPANESE"

if [ "$1" == "" ];
then
  
  debug_start "English to Japanese"

  JAPANESE=$(egrep -i "$KEYWORDS_ENGLISHTOJAPANESE" "$NEWPAGES")

  categorize "JAPANESE" "English to Japanese"

  debug_end "English to Japanese"

fi