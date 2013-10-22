#!/bin/bash

egrep -i 'Arabic word for|How do you say .+ in Arabic' newpages.txt >> EnglishtoArabic.txt

ARABIC=`stat --print=%s EnglishtoArabic.txt`

if [ $ARABIC -ne 0 ];
then
  export CATFILE="EnglishtoArabic.txt"
  export CATNAME="English to Arabic"
  $CATEGORIZE
fi

rm EnglishtoArabic.txt