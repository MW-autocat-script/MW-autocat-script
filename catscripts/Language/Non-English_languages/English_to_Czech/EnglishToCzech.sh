#!/bin/bash

KEYWORDS_ENGLISHTOCZECH="How(| )do(| )you(| )(say|spell).+in(| )Czech|Czech(| )word(| )for"
KEYWORDS_ENGLISHTOCZECH_ALL="$KEYWORDS_ENGLISHTCZECH"

if [ "$1" == "" ];
then
  
  debug_start "English to Czech"

  CZECH=$(egrep -i "$KEYWORDS_ENGLISHTOCZECH" "$NEWPAGES")

  categorize "CZECH" "English to Czech"

  debug_end "English to Czech"

fi