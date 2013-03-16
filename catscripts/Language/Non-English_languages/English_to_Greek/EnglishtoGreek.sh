#!/bin/bash

egrep -i 'Greek word for|How do you say .+ in Greek' newpages.txt >> EnglishtoGreek.txt

GREEK=`stat --print=%s EnglishtoGreek.txt`

if [ $GREEK -ne 0 ];
then
  export CATFILE="EnglishtoGreek.txt"
  export CATNAME="English to Greek"
  $CATEGORIZE
fi

rm EnglishtoGreek.txt