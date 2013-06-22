#!/bin/bash

KEYWORDS_PRONUNCIATION="How do you pronounce|How is .+ pronounced|pron(|o)unciation"

egrep -i "$KEYWORDS_PRONUNCIATION" newpages.txt >> Pronunciation.txt

PRONUNCIATION=`stat --print=%s Pronunciation.txt`

if [ $PRONUNCIATION -ne 0 ];
then
  export CATFILE="Pronunciation.txt"
  export CATNAME="Pronunciation"
  $CATEGORIZE
fi

rm Pronunciation.txt