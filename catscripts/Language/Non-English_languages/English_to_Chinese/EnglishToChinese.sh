#!/bin/bash

KEYWORDS_ENGLISHTOCHINESE="How(| )do(| )you(| )(say|spell).+in(| )(Chinese|Mandarin|Cantonese)|(Chinese|Mandarin|Cantonese)(| )word(| )for"
KEYWORDS_ENGLISHTOCHINESE_ALL="$KEYWORDS_ENGLISHTOCHINESE"

if [ "$1" == "" ];
then
  
  debug_start "English to Chinese"

  CHINESE=$(egrep -i "$KEYWORDS_ENGLISHTOCHINESE" "$NEWPAGES")

  categorize "CHINESE" "English to Chinese"

  debug_end "English to Chinese"

fi