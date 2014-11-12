#!/bin/bash

KEYWORDS_ENGLISHTOKLINGON="How(| )do(| )you(| )(say|spell|write).+in(| )Klingon|Klingon(| )word(| )for"
KEYWORDS_ENGLISHTOKLINGON_ALL="$KEYWORDS_ENGLISHTOKLINGON"

if [ "$1" == "" ];
then

  debug_start "English to Klingon"

  KLINGON=$(egrep -i "$KEYWORDS_ENGLISHTOKLINGON" "$NEWPAGES")

  categorize "KLINGON" "English to Klingon"

  debug_end "English to Klingon"

fi