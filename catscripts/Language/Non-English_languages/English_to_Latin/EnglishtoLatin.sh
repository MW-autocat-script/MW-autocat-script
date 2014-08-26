#!/bin/bash

KEYWORDS_ENGLISHTOLATIN="How(| )(to|do(| )you)(| )(say|spell).+in(| )Latin|What(| )is(| )the(| )Latin(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to Latin"

  LATIN=$(egrep -i "$KEYWORDS_ENGLISHTOLATIN" "$NEWPAGES")

  categorize "LATIN" "English to Latin"

  debug_end "English to Latin"

fi
