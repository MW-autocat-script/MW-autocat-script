#!/bin/bash

KEYWORDS_ENGLISHTOSPANISH="How(| )(to|do(| )you)(| )(say|spell).+in(| )Spanish|^[[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )Spanish|Spanish(| )word(| )for"

if [ "$1" == "" ];
then

  debug_start "English to Spanish"

  ENGLISHTOSPANISH=$(egrep -i "$KEYWORDS_ENGLISHTOSPANISH" "$NEWPAGES")

  categorize "ENGLISHTOSPANISH" "English to Spanish"

  debug_end "English to Spanish"

fi
