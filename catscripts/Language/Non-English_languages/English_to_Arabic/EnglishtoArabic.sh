#!/bin/bash

KEYWORDS_ENGLISHTOARABIC="Arabic(| )word(| )for|say.+in(| )Arabic"

if [ "$1" == "" ];
then

  debug_start "English to Arabic"

  ARABIC=$(egrep -i "$KEYWORDS_ENGLISHTOARABIC" "$NEWPAGES")

  if [ "$ARABIC" != "" ];
  then
    printf "%s" "$ARABIC" > EnglishtoArabic.txt
    export CATFILE="EnglishtoArabic.txt"
    export CATNAME="English to Arabic"
    $CATEGORIZE
    rm EnglishtoArabic.txt
    unset ARABIC
  fi

  debug_end "English to Arabic"

fi
