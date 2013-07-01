#!/bin/bash

KEYWORDS_CONNECTICUT="Connecticut|Hartford|, CT\b"

egrep -i "$KEYWORDS_CONNECTICUT" newpages.txt >> Connecticut.txt

CONNECTICUT=`stat --print=%s Connecticut.txt`

if [ $CONNECTICUT -ne 0 ];
then
  export CATFILE="Connecticut.txt"
  export CATNAME="Connecticut"
  $CATEGORIZE
fi

rm Connecticut.txt