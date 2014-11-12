#!/bin/bash

KEYWORDS_ENGLISHTOIRISH="How(| )do(| )you(| )(say|spell).+in(| )Irish|Irish(| )(|Gaelic)(| )word(| )for"
KEYWORDS_ENGLISHTOIRISH_ALL="$KEYWORDS_ENGLISHTOIRISH"

if [ "$1" == "" ];
then

  debug_start "English to Irish"

  IRISH=$(egrep -i "$KEYWORDS_ENGLISHTOIRISH" "$NEWPAGES")

  categorize "IRISH" "English to Irish"

  debug_end "English to Irish"

fi