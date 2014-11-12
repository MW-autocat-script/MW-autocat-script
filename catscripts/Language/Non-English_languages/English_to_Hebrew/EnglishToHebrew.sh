#!/bin/bash

KEYWORDS_ENGLISHTOHEBREW="How(| )do(| )you(| )(say|spell).+in(| )Hebrew|Hebrew(| )word(| )for"
KEYWORDS_ENGLISHTOHEBREW_ALL="$KEYWORDS_ENGLISHTOHEBREW"

if [ "$1" == "" ];
then
  
  debug_start "English to Hebrew"

  HEBREW=$(egrep -i "$KEYWORDS_ENGLISHTOHEBREW" "$NEWPAGES")

  categorize "HEBREW" "English to Hebrew"

  debug_end "English to Hebrew"

fi