#!/bin/bash

KEYWORDS_DELAWARE="Delaware"

egrep -i "$KEYWORDS_DELAWARE" newpages.txt >> Delaware.txt

DELAWARE=`stat --print=%s Delaware.txt`

if [ $DELAWARE -ne 0 ];
then
  export CATFILE="Delaware.txt"
  export CATNAME="Delaware"
  $CATEGORIZE
fi

rm Delaware.txt