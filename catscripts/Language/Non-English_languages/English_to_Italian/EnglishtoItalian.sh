#!/bin/bash

egrep -i 'How do you say.+in Italian\]\]' newpages.txt >> EnglishtoItalian.txt
egrep -i 'How do you spell.+in Italian\]\]' newpages.txt >> EnglishtoItalian.txt
egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} in Italian' newpages.txt >> EnglishtoItalian.txt
egrep -i 'What is the Italian word for' newpages.txt >> EnglishtoItalian.txt
egrep -i 'How to say.+in Italian' newpages.txt >> EnglishtoItalian.txt

ENGLISHTOITALIAN=`stat --print=%s EnglishtoItalian.txt`

if [ $ENGLISHTOITALIAN -ne 0 ];
then
  export CATFILE="EnglishtoItalian.txt"
  export CATNAME="English to Italian"
  $CATEGORIZE
fi

rm EnglishtoItalian.txt
