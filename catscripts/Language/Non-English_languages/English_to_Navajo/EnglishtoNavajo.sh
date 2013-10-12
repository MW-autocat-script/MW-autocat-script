#!/bin/bash

egrep -i '.+in Navajo$]|Navajo word for' newpages.txt >> EnglishtoNavajo.txt

ENGLISHTONAVAJO=`stat --print=%s EnglishtoNavajo.txt`

if [ $ENGLISHTONAVAJO -ne 0 ];
then
  export CATFILE="EnglishtoNavajo.txt"
  export CATNAME="English to Navajo"
  $CATEGORIZE
fi

rm EnglishtoNavajo.txt