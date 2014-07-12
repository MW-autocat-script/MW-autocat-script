#!/bin/bash

KEYWORDS_ENGLISHTOGERMAN="How(| )(to|do(| )you)(| )(say|spell).+in(| )German|[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )German\b|What(| )is(| )the(| )German(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to German"

  ENGLISHTOGERMAN=$(egrep -i "$KEYWORDS_ENGLISHTOGERMAN" newpages.txt)

  if [ "$ENGLISHTOGERMAN" != "" ];
  then
    printf "%s" "$ENGLISHTOGERMAN" > EnglishtoGerman.txt
    export CATFILE="EnglishtoGerman.txt"
    export CATNAME="English to German"
    $CATEGORIZE
    rm EnglishtoGerman.txt
    unset ENGLISHTOGERMAN
  fi

  debug_end "English to German"

fi
