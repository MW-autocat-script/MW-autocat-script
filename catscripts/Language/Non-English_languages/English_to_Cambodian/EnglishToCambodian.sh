#!/bin/bash

KEYWORDS_ENGLISHTOCAMBODIAN="How(| )do(| )you(| )(say|spell).+in(| )Cambodian|Cambodian(| )word(| )for"
KEYWORDS_ENGLISHTOCAMBODIAN_ALL="$KEYWORDS_ENGLISHTOCAMBODIAN"

if [ "$1" == "" ];
then
  
  debug_start "English to Cambodian"

  CAMBODIAN=$(egrep -i "$KEYWORDS_ENGLISHTOCAMBODIAN" "$NEWPAGES")

  categorize "CAMBODIAN" "English to Cambodian"

  debug_end "English to Cambodian"

fi