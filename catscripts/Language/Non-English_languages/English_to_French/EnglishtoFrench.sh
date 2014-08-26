#!/bin/bash

KEYWORDS_ENGLISHTOFRENCH="\bin(| )French$|French(| )word(| )for"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "English to French"

  ETOF=$(egrep -i "$KEYWORDS_ENGLISHTOFRENCH" "$NEWPAGES")

  categorize "ETOF" "English to French"

  debug_end "English to French"

fi