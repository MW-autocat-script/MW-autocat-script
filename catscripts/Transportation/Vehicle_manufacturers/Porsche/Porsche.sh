#!/bin/bash

KEYWORDS_PORSCHE="Porsche"

egrep -i "$KEYWORDS_PORSCHE" newpages.txt >> Porsche.txt

PORSCHE=`stat --print=%s Porsche.txt`

if [ $PORSCHE -ne 0 ];
then
  export CATFILE="Porsche.txt"
  export CATNAME="Porsche"
  $CATEGORIZE
fi

rm Porsche.txt