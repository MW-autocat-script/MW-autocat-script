#!/bin/bash

KEYWORDS_ENGLISHTORUSSIAN="How(| )do(| )you(| )(say|spell).+in(| )Russian|Russian(| )word(| )for"
KEYWORDS_ENGLISHTORUSSIAN_ALL="$KEYWORDS_ENGLISHTORUSSIAN"

if [ "$1" == "" ];
then

  debug_start "English to Russian"

  RUSSIAN=$(egrep -i "$KEYWORDS_ENGLISHTORUSSIAN" "$NEWPAGES")

  categorize "RUSSIAN" "English to Russian"

  debug_end "English to Russian"

fi