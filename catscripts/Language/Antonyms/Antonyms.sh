#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Antonyms\n" 
fi

egrep -i "(What is|What's|Whats) the opposite of [a-z]{1,}" newpages.txt >> Antonyms.txt
egrep -i "(What is|What's|Whats) (a|an) antonym of [a-z]{1,}" newpages.txt >> Antonyms.txt
egrep -i "\[\[opposite of [a-z]{1,}\]\]" newpages.txt >> Antonyms.txt
egrep -i "\[\[Antonym(|s) for [a-z]{1,}\]\]" newpages.txt >> Antonyms.txt
egrep -i 'antonym' newpages.txt >> Antonyms.txt

ANTONYMS=`stat --print=%s Antonyms.txt`

if [ $ANTONYMS -ne 0 ];
then
  export CATFILE="Antonyms.txt"
  export CATNAME="Antonyms"
  $CATEGORIZE
fi

rm Antonyms.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Antonyms\n" 
fi