#!/bin/bash

KEYWORDS_KANSAS="\bKansas"

egrep -i "$KEYWORDS_KANSAS" newpages.txt >> Kansas.txt

KANSAS=$(stat --print=%s Kansas.txt)

if [ $KANSAS -ne 0 ];
then
  export CATFILE="Kansas.txt"
  export CATNAME="Kansas"
  $CATEGORIZE
fi

rm Kansas.txt