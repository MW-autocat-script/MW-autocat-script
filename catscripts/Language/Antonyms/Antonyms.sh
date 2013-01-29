#!/bin/bash

cat newpages.txt | egrep -i "(What is|What's|Whats) the opposite of [a-z]{1,}" >> Antonyms.txt
cat newpages.txt | egrep -i "(What is|What's|Whats) (a|an) antonym of [a-z]{1,}" >> Antonyms.txt
cat newpages.txt | egrep -i "\[\[opposite of [a-z]{1,}\]\]" >> Antonyms.txt
cat newpages.txt | egrep -i "\[\[Antonym(|s) for [a-z]{1,}\]\]" >> Antonyms.txt
egrep -i 'antonym' newpages.txt >> Antonyms.txt

ANTONYMS=`stat --print=%s Antonyms.txt`

if [ $ANTONYMS -ne 0 ];
then
  export CATFILE="Antonyms.txt"
  export CATNAME="Antonyms"
  ./catscripts/Categorize.sh
fi

rm Antonyms.txt
