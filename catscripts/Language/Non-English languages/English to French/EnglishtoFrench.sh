#!/bin/bash

cat newpages.txt | egrep -i '.+in French\]\]|French word for' >> EnglishtoFrench.txt

ETOF=`stat --print=%s EnglishtoFrench.txt`

if [ $ETOF -ne 0 ];
then
  export CATFILE="EnglishtoFrench.txt"
  export CATNAME="English to French"
  ./catscripts/Categorize.sh
fi

rm EnglishtoFrench.txt