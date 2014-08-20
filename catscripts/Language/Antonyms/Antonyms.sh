#!/bin/bash

KEYWORDS_ANTONYMS="antonym|(What is|What(|')s) the opposite of [a-z]{1,}"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Antonyms"

  ANTONYMS=$(egrep -i "$KEYWORDS_ANTONYMS" "$NEWPAGES")

  if [ "$ANTONYMS" != "" ];
  then
    printf "%s" "$ANTONYMS" > Antonyms.txt
    export CATFILE="Antonyms.txt"
    export CATNAME="Antonyms"
    $CATEGORIZE
    rm Antonyms.txt
    unset ANTONYMS
  fi

  debug_end "Antonyms"

fi