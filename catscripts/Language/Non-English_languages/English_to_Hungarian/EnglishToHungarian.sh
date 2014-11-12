#!/bin/bash

KEYWORDS_ENGLISHTOHUNGARIAN="How(| )do(| )you(| )(say|spell).+in(| )Hungarian|Hungarian(| )word(| )for"
KEYWORDS_ENGLISHTOHUNGARIAN_ALL="$KEYWORDS_ENGLISHTOHUNGARIAN"

if [ "$1" == "" ];
then
  
  debug_start "English to Hungarian"

  HUNGARIAN=$(egrep -i "$KEYWORDS_ENGLISHTOHUNGARIAN" "$NEWPAGES")

  categorize "HUNGARIAN" "English to Hungarian"

  debug_end "English to Hungarian"

fi