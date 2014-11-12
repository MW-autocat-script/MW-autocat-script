#!/bin/bash

KEYWORDS_ENGLISHTOPORTUGUESE="How(| )do(| )you(| )(say|spell|write).+in(| )(Portuguese|Brazilian)|(Portuguese|Brazilian)(| )word(| )for"
KEYWORDS_ENGLISHTOPORTUGUESE_ALL="$KEYWORDS_ENGLISHTOPORTUGUESE"

if [ "$1" == "" ];
then

  debug_start "English to Portuguese"

  PORTUGUESE=$(egrep -i "$KEYWORDS_ENGLISHTOPORTUGUESE" "$NEWPAGES")

  categorize "PORTUGUESE" "English to Portuguese"

  debug_end "English to Portuguese"

fi