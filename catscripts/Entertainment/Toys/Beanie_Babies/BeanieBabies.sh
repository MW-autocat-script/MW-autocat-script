#!/bin/bash

KEYWORDS_BEANIEBABIES="Beanie(| )Bab(y|ies)"
KEYWORDS_BEANIEBABIES_ALL="$KEYWORDS_BEANIEBABIES"

if [ "$1" == "" ];
then
  
  debug_start "Beanie Babies"

  BEANIEBABIES=$(egrep -i "$KEYWORDS_BEANIEBABIES" newpages.txt)

  if [ "$BEANIEBABIES" != "" ];
  then
    printf "%s" "$BEANIEBABIES" > BeanieBabies.txt
    export CATFILE="BeanieBabies.txt"
    export CATNAME="Beanie Babies"
    $CATEGORIZE
    rm BeanieBabies.txt
    unset BEANIEBABIES
  fi

  debug_end "Beanie Babies"

fi