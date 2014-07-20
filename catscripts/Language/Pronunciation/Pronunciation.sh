#!/bin/bash

KEYWORDS_PRONUNCIATION="How(| )do(| )you(| )pronounce|How(| )is(| ).+(| )pronounced|pron(|o)unciation"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pronunciation"

  PRONUNCIATION=$(egrep -i "$KEYWORDS_PRONUNCIATION" newpages.txt)

  if [ "$PRONUNCIATION" != "" ];
  then
    printf "%s" "$PRONUNCIATION" > Pronunciation.txt
    export CATFILE="Pronunciation.txt"
    export CATNAME="Pronunciation"
    $CATEGORIZE
    rm Pronunciation.txt
    unset PRONUNCIATION
  fi

  debug_end "Pronunciation"

fi