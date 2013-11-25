#!/bin/bash

egrep -i 'How do you say.+in Latin' newpages.txt >> EnglishtoLatin.txt
egrep -i 'How do you spell.+in Latin' newpages.txt >> EnglishtoLatin.txt
egrep -i '^[abcdefghijklmopqrstuvwxyz]{1,} in Latin' newpages.txt >> EnglishtoLatin.txt
egrep -i 'What is the Latin word for' newpages.txt >> EnglishtoLatin.txt
egrep -i 'How to say.+in Latin' newpages.txt >> EnglishtoLatin.txt

LATIN=`stat --print=%s EnglishtoLatin.txt`

if [ $LATIN -ne 0 ];
then
  export CATFILE="EnglishtoLatin.txt"
  export CATNAME="English to Latin"
  $CATEGORIZE
fi

rm EnglishtoLatin.txt
