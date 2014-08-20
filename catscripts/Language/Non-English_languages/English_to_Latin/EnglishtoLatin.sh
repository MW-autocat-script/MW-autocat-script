#!/bin/bash

KEYWORDS_ENGLISHTOLATIN="How(| )(to|do(| )you)(| )(say|spell).+in(| )Latin|What(| )is(| )the(| )Latin(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to Latin"

  LATIN=$(egrep -i "$KEYWORDS_ENGLISHTOLATIN" "$NEWPAGES")

  if [ "$LATIN" != "" ];
  then
    printf "%s" "$LATIN" > EnglishtoLatin.txt
    export CATFILE="EnglishtoLatin.txt"
    export CATNAME="English to Latin"
    $CATEGORIZE
    rm EnglishtoLatin.txt
    unset LATIN
  fi

  debug_end "English to Latin"

fi
