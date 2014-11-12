#!/bin/bash

KEYWORDS_ENGLISHTOMALAY="^.+in(| )Malay\b|Malay(| )word(| )for"
KEYWORDS_ENGLISHTOMALAY_ALL="$KEYWORDS_ENGLISHTOMALAY"

if [ "$1" == "" ];
then
  
  debug_start "English to Malay"

  MALAY=$(egrep -i "$KEYWORDS_ENGLISHTOMALAY" "$NEWPAGES")

  categorize "MALAY" "English to Malay"

  debug_end "English to Malay"

fi