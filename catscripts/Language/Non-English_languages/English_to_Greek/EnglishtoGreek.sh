#!/bin/bash

KEYWORDS_ENGLISHTOGREEK="Greek(| )word(| )for|How(| )do(| )you(| )say(| ).+in Greek"

if [ "$1" == "" ];
then

  debug_start "English to Greek"

  GREEK=$(egrep -i "$KEYWORDS_ENGLISHTOGREEK" "$NEWPAGES")

  categorize "GREEK" "English to Greek"

  debug_end "English to Greek"

fi