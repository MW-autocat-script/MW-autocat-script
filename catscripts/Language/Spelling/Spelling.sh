#!/bin/bash

KEYWORDS_SPELLING="How(| )(to|do you)(| )spell(| )(|\"|')[a-z]{1,}(|\"|')$"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Spelling"

  SPELLING=$(egrep -i "$KEYWORDS_SPELLING" "$NEWPAGES")

  if [ "$SPELLING" != "" ];
  then
    printf "%s" "$SPELLING" > Spelling.txt
    export CATFILE="Spelling.txt"
    export CATNAME="Spelling"
    $CATEGORIZE
    rm Spelling.txt
    unset SPELLING
  fi

  debug_end "Spelling"

fi