#!/bin/bash

egrep -i "(What is|What's|Whats) another word for [a-z]{1,}" newpages.txt >> Synonyms.txt
egrep -i "(What is|What's|Whats) a synonym for [a-z]{1,}" newpages.txt >> Synonyms.txt
egrep -i "\[\[Another word for [a-z]{1,}\]\]" newpages.txt >> Synonyms.txt

SYNONYMS=`stat --print=%s Synonyms.txt`

if [ $SYNONYMS -ne 0 ];
then
  export CATFILE="Synonyms.txt"
  export CATNAME="Synonyms"
  ./catscripts/Categorize.sh
fi

rm Synonyms.txt
