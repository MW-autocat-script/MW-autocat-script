#!/bin/bash

KEYWORDS_ENGLISHTOINDONESIAN="How(| )do(| )you(| )(say|spell).+in(| )Indonesian|Indonesian(| )word(| )for"
KEYWORDS_ENGLISHTOINDONESIAN_ALL="$KEYWORDS_ENGLISHTOINDONESIAN"

if [ "$1" == "" ];
then

  debug_start "English to Indonesian"

  INDONESIAN=$(egrep -i "$KEYWORDS_ENGLISHTOINDONESIAN" "$NEWPAGES")

  categorize "INDONESIAN" "English to Indonesian"

  debug_end "English to Indonesian"

fi