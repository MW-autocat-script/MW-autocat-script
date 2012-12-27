#!/bin/bash

cat newpages.txt | egrep -i 'How do you say.+in Italian\]\]' >> EnglishtoItalian.txt
cat newpages.txt | egrep -i 'How do you spell.+in Italian\]\]' >> EnglishtoItalian.txt
cat newpages.txt | egrep -i '[abcdefghijklmopqrstuvwxyz]{1,} in Italian' >> EnglishtoItalian.txt
cat newpages.txt | egrep -i 'What is the Italian word for' >> EnglishtoItalian.txt
cat newpages.txt | egrep -i 'How to say.+in Italian' >> EnglishtoItalian.txt

ENGLISHTOITALIAN=`stat --print=%s EnglishtoItalian.txt`

if [ $ENGLISHTOITALIAN -ne 0 ];
then
  export CATFILE="EnglishtoItalian.txt"
  export CATNAME="English to Italian"
  ./catscripts/Categorize.sh
fi

rm EnglishtoItalian.txt
