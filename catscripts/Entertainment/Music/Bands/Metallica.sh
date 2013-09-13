#!/bin/bash

KEYWORDS_METALLICA="Metallica"

egrep -i "$KEYWORDS_METALLICA" newpages.txt >> Metallica.txt

METALLICA=`stat --print=%s Metallica.txt`

if [ $METALLICA -ne 0 ];
then
  export CATFILE="Metallica.txt"
  export CATNAME="Metallica"
  $CATEGORIZE
fi

rm Metallica.txt