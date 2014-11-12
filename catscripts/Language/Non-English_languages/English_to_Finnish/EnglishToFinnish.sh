#!/bin/bash

KEYWORDS_ENGLISHTOFINNISH="How(| )do(| )you(| )(say|spell).+in(| )Finnish|Finnish(| )word(| )for"
KEYWORDS_ENGLISHTOFINNISH_ALL="$KEYWORDS_ENGLISHTOFINNISH"

if [ "$1" == "" ];
then

  debug_start "English to Finnish"

  FINNISH=$(egrep -i "$KEYWORDS_ENGLISHTOFINNISH" "$NEWPAGES")

  categorize "FINNISH" "English to Finnish"

  debug_end "English to Finnish"

fi