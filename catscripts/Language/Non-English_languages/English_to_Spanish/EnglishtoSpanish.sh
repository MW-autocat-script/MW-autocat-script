#!/bin/bash

KEYWORDS_ENGLISHTOSPANISH="How(| )(to|do(| )you)(| )(say|spell).+in(| )Spanish|^[[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )Spanish|Spanish(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to Spanish"

  ENGLISHTOSPANISH=$(egrep -i "$KEYWORDS_ENGLISHTOSPANISH" "$NEWPAGES")

  if [ "$ENGLISHTOSPANISH" != "" ];
  then
    printf "%s" "$ENGLISHTOSPANISH" > EnglishtoSpanish.txt
    export CATFILE="EnglishtoSpanish.txt"
    export CATNAME="English to Spanish"
    $CATEGORIZE
    rm EnglishtoSpanish.txt
    unset ENGLISHTOSPANISH
  fi

  debug_end "English to Spanish"

fi
