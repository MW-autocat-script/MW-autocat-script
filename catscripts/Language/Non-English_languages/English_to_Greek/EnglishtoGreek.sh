#!/bin/bash

KEYWORDS_ENGLISHTOGREEK="Greek(| )word(| )for|How(| )do(| )you(| )say(| ).+in Greek"

if [ "$1" == "" ];
then

  debug_start "English to Greek"

  GREEK=$(egrep -i "$KEYWORDS_ENGLISHTOGREEK" newpages.txt)

  if [ "$GREEK" != "" ];
  then
    printf "%s" "$GREEK" > EnglishtoGreek.txt
    export CATFILE="EnglishtoGreek.txt"
    export CATNAME="English to Greek"
    $CATEGORIZE
    rm EnglishtoGreek.txt
    unset GREEK
  fi

  debug_end "English to Greek"

fi