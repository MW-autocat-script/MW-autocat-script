#!/bin/bash

KEYWORDS_SPELLING="How (to|do you) spell (|\"|')[a-z]{1,}(|\"|')$"


if [ "$1" == "" ]; #Normal operation
then

  SPELLING=$(egrep -i "$KEYWORDS_SPELLING" newpages.txt)

  if [ "$SPELLING" != "" ];
  then
    printf "$SPELLING" > Spelling.txt
    export CATFILE="Spelling.txt"
    export CATNAME="Spelling"
    $CATEGORIZE
    rm Spelling.txt
    unset SPELLING
  fi

fi