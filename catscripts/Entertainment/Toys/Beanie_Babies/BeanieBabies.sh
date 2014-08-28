#!/bin/bash

KEYWORDS_BEANIEBABIES="Beanie(| )Bab(y|ies)"
KEYWORDS_BEANIEBABIES_ALL="$KEYWORDS_BEANIEBABIES"

if [ "$1" == "" ];
then
  
  debug_start "Beanie Babies"

  BEANIEBABIES=$(egrep -i "$KEYWORDS_BEANIEBABIES" "$NEWPAGES")

  categorize "BEANIEBABIES" "Beanie Babies"

  debug_end "Beanie Babies"

fi