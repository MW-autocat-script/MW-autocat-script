#!/bin/bash

KEYWORDS_ENGLISHTOGERMAN="How(| )(to|do(| )you)(| )(say|spell).+in(| )German|[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )German\b|What(| )is(| )the(| )German(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to German"

  ENGLISHTOGERMAN=$(egrep -i "$KEYWORDS_ENGLISHTOGERMAN" "$NEWPAGES")

  categorize "ENGLISHTOGERMAN" "English to German"

  debug_end "English to German"

fi
