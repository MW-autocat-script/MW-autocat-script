#!/bin/bash

KEYWORDS_ENGLISHTOKOREAN="How(| )(to|do(| )you)(| )(say|spell).+ in(| )Korean|What(| )is(| )the(| )Korean(| )word(| )for"

if [ "$1" == "" ]; #Normal operation
then

  KOREAN=$(egrep -i "$KEYWORDS_ENGLISHTOKOREAN" "$NEWPAGES")

  debug_start "English to Korean"

  if [ "$KOREAN" != "" ];
  then
    printf "%s" "$KOREAN" > EnglishtoKorean.txt
    export CATFILE="EnglishtoKorean.txt"
    export CATNAME="English to Korean"
    $CATEGORIZE
    rm EnglishtoKorean.txt
    unset KOREAN
  fi

  debug_end "English to Korean"

fi

