#!/bin/bash

egrep -i '.+in French$|French word for' newpages.txt >> EnglishtoFrench.txt

ETOF=`stat --print=%s EnglishtoFrench.txt`

if [ $ETOF -ne 0 ];
then
  export CATFILE="EnglishtoFrench.txt"
  export CATNAME="English to French"
  $CATEGORIZE
fi

rm EnglishtoFrench.txt