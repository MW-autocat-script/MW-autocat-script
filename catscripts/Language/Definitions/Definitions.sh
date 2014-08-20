#!/bin/bash

KEYWORDS_DEFINITIONS="^What is [a-z]{1,}(| )(|[a-z]{1,})$|^What is a [a-z]{1,}(| )(|[a-z]{1,})$|^What is an [a-z]{1,}(| )(|[a-z]{1,})$|^What(|')s a [a-z]{1,}(| )(|[a-z]{1,})$|^What(|'s) an [a-z]{1,}(| )(|[a-z]{1,})$|^What does [a-z]{1,}(| )(|[a-z]{1,})(| )mean$|^What does the word [a-z]{1,}(| )(|[a-z]{1,})(| )mean$"
KEYWORDS_NAMES="^What does the (sur|)name (|\"|')[a-z]{1,}(|\"|') mean"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Definitions"

  DEFINITIONS=$(egrep -i "$KEYWORDS_DEFINITIONS" "$NEWPAGES")
  NAMEMEANINGS=$(egrep -i "$KEYWORDS_NAMES" "$NEWPAGES")

  if [ "$DEFINITIONS" != "" ];
  then
    printf "%s" "$DEFINITIONS" > Definitions.txt
    export CATFILE="Definitions.txt"
    export CATNAME="Definitions"
    $CATEGORIZE
    rm Definitions.txt
    unset DEFINITIONS
  fi

  if [ "$NAMEMEANINGS" != "" ];
  then
    printf "%s" "$NAMEMEANINGS" > NameMeanings.txt
    export CATFILE="NameMeanings.txt"
    export CATNAME="Name meanings"
    $CATEGORIZE
    rm NameMeanings.txt
    unset NAMEMEANINGS
  fi

  debug_end "Definitions"

fi