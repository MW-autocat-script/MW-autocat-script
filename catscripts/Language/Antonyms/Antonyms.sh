#!/bin/bash

cat newpages.txt | egrep -i "(What is|What's|Whats) the opposite of [a-z]{1,}" >> Antonyms.txt
cat newpages.txt | egrep -i "(What is|What's|Whats) (a|an) antonym of [a-z]{1,}" >> Antonyms.txt
cat newpages.txt | egrep -i "\[\[opposite of [a-z]{1,}\]\]" >> Antonyms.txt
cat newpages.txt | egrep -i "\[\[Antonym(|s) for [a-z]{1,}\]\]" >> Antonyms.txt

ANTONYMS=`stat --print=%s Antonyms.txt`

if [ $ANTONYMS -ne 0 ];
then
  ./catscripts/Language/Antonyms/catAntonyms.sh
fi

rm Antonyms.txt
