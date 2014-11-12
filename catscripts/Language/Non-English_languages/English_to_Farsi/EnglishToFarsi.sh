#!/bin/bash

KEYWORDS_ENGLISHTOFARSI="How(| )do(| )you(| )(say|spell).+in(| )(Farsi|Fārsi|Dari)|(Farsi|Fārsi|Dari)(| )word(| )for"
KEYWORDS_ENGLISHTOFARSI_ALL="$KEYWORDS_ENGLISHTOFARSI"

if [ "$1" == "" ];
then
  
  debug_start "English to Farsi"

  FARSI=$(egrep -i "$KEYWORDS_ENGLISHTOFARSI" "$NEWPAGES")

  categorize "FARSI" "English to Farsi"

  debug_end "English to Farsi"

fi