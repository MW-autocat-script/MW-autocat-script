#!/bin/bash

export KEYWORDS_ECUADOR="Ecuador"

egrep -i "$KEYWORDS_ECUADOR" newpages.txt >> Ecuador.txt

ECUADOR=$(stat --print=%s Ecuador.txt)

if [ $ECUADOR -ne 0 ];
then
  export CATFILE="Ecuador.txt"
  export CATNAME="Ecuador"
  $CATEGORIZE
fi

rm Ecuador.txt