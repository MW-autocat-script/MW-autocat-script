#!/bin/bash

KEYWORDS_ENGLISHTOHAWAIIAN="How(| )do(| )you(| )(say|spell).+in(| )Hawaiian|Hawaiian(| )word(| )for"
KEYWORDS_ENGLISHTOHAWAIIAN_ALL="$KEYWORDS_ENGLISHTOHAWAIIAN"

if [ "$1" == "" ];
then
  
  debug_start "English to Hawaiian"

  HAWAIIAN=$(egrep -i "$KEYWORDS_ENGLISHTOHAWAIIAN" "$NEWPAGES")

  categorize "HAWAIIAN" "English to Hawaiian"

  debug_end "English to Hawaiian"

fi