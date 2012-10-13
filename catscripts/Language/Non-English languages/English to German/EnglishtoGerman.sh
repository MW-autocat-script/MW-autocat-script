#!/bin/bash

cat newpages.txt | egrep -i 'How do you say.+in German\]\]' >> EnglishtoGerman.txt
cat newpages.txt | egrep -i 'How do you spell.+in German\]\]' >> EnglishtoGerman.txt
cat newpages.txt | egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} in German\]\]' >> EnglishtoGerman.txt
cat newpages.txt | egrep -i 'What is the German word for' >> EnglishtoGerman.txt
cat newpages.txt | egrep -i 'How to say.+in German' >> EnglishtoGerman.txt

ENGLISHTOGERMAN=`stat --print=%s EnglishtoGerman.txt`

if [ $ENGLISHTOGERMAN -ne 0 ];
then
  export CATFILE="EnglishtoGerman.txt"
  export CATNAME="English to German"
  ./catscripts/Categorize.sh
fi

rm EnglishtoGerman.txt
