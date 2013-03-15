#!/bin/bash

egrep -i 'How do you say.+in Spanish\]\]' newpages.txt >> EnglishtoSpanish.txt
egrep -i 'How do you spell.+in Spanish\]\]' newpages.txt >> EnglishtoSpanish.txt
egrep -i '^\[\[[abcdefghijklmopqrstuvwxyz]{1,} in Spanish\]\]' newpages.txt >> EnglishtoSpanish.txt
egrep -i 'What is the Spanish word for' newpages.txt >> EnglishtoSpanish.txt
egrep -i 'How to say.+in Spanish' newpages.txt >> EnglishtoSpanish.txt

SIZEOFENGLISHTOSPANISH=`stat --print=%s EnglishtoSpanish.txt`

if [ $SIZEOFENGLISHTOSPANISH -ne 0 ];
then
  export CATFILE="EnglishtoSpanish.txt"
  export CATNAME="English to Spanish"
  $CATEGORIZE
fi

rm EnglishtoSpanish.txt
