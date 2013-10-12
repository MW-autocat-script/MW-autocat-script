#!/bin/bash

egrep -i 'How do you say.+in Korean' newpages.txt >> EnglishtoKorean.txt
egrep -i 'How do you spell.+in Korean' newpages.txt >> EnglishtoKorean.txt
egrep -i '^\[\[[abcdefghijklmopqrstuvwxyz]{1,} in Korean' newpages.txt >> EnglishtoKorean.txt
egrep -i 'What is the Korean word for' newpages.txt >> EnglishtoKorean.txt
egrep -i 'How to say.+in Korean' newpages.txt >> EnglishtoKorean.txt

KOREAN=`stat --print=%s EnglishtoKorean.txt`

if [ $KOREAN -ne 0 ];
then
  export CATFILE="EnglishtoKorean.txt"
  export CATNAME="English to Korean"
  $CATEGORIZE
fi

rm EnglishtoKorean.txt
