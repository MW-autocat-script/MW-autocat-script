#!/bin/bash

cat newpages.txt | egrep -i 'How do you say.+in Spanish\]\]' >> EnglishtoSpanish.txt
cat newpages.txt | egrep -i 'How do you spell.+in Spanish\]\]' >> EnglishtoSpanish.txt
cat newpages.txt | egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} in Spanish' >> EnglishtoSpanish.txt
cat newpages.txt | egrep -i 'What is the Spanish word for' >> EnglishtoSpanish.txt
cat newpages.txt | egrep -i 'How to say.+in Spanish' >> EnglishtoSpanish.txt

SIZEOFENGLISHTOSPANISH=`stat --print=%s EnglishtoSpanish.txt`

if [ $SIZEOFENGLISHTOSPANISH -ne 0 ];
then
    ./catscripts/Language/Non-English\ languages/English\ to\ Spanish/catEnglishtoSpanish.sh
fi

rm EnglishtoSpanish.txt
