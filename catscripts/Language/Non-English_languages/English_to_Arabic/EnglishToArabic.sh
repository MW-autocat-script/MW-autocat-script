#!/bin/bash

KEYWORDS_ENGLISHTOARABIC="Arabic(| )word(| )for|say.+in(| )Arabic"

if [ "$1" == "" ];
then

  debug_start "English to Arabic"

  ARABIC=$(egrep -i "$KEYWORDS_ENGLISHTOARABIC" "$NEWPAGES")

  categorize "ARABIC" "English to Arabic"

  debug_end "English to Arabic"

fi
