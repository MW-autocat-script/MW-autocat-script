#!/bin/bash

export KEYWORDS_COUNTRIES_VENEZUELA="Venezuela"

egrep -i "$KEYWORDS_COUNTRIES_VENEZUELA" newpages.txt >> Venezuela.txt

VENEZUELA=`stat --print=%s Venezuela.txt`

if [ $VENEZUELA -ne 0 ];
then
  export CATFILE="Venezuela.txt"
  export CATNAME="Venezuela"
  $CATEGORIZE
fi

rm Venezuela.txt