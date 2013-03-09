#!/bin/bash

egrep -i 'How do you say.+in German\]\]' newpages.txt >> EnglishtoGerman.txt
egrep -i 'How do you spell.+in German\]\]' newpages.txt >> EnglishtoGerman.txt
egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} in German\]\]' newpages.txt >> EnglishtoGerman.txt
egrep -i 'What is the German word for' newpages.txt >> EnglishtoGerman.txt
egrep -i 'How to say.+in German' newpages.txt >> EnglishtoGerman.txt

ENGLISHTOGERMAN=`stat --print=%s EnglishtoGerman.txt`

if [ $ENGLISHTOGERMAN -ne 0 ];
then
  export CATFILE="EnglishtoGerman.txt"
  export CATNAME="English to German"
  ./catscripts/Categorize.sh
fi

rm EnglishtoGerman.txt
