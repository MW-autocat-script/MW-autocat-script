#!/bin/bash

KEYWORDS_SCOTLAND="Scotland"

egrep -i "$KEYWORDS_SCOTLAND" newpages.txt >> Scotland.txt

SCOTLAND=`stat --print=%s Scotland.txt`

if [ $SCOTLAND -ne 0 ];
then
  export CATFILE="Scotland.txt"
  export CATNAME="Scotland"
  $CATEGORIZE
fi

rm Scotland.txt