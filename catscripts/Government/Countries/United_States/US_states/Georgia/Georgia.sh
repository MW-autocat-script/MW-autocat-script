#!/bin/bash

KEYWORDS_ATLANTA="Atlanta"
KEYWORDS_GEORGIA="Georgia|, GA\b"
KEYWORDS_GEORGIA_EXCLUDE="Republic(| )of(| )Georgia|$KEYWORDS_ATLANTA"

egrep -i "$KEYWORDS_GEORGIA" newpages.txt | egrep -iv "$KEYWORDS_GEORGIA_EXCLUDE" >> Georgia.txt
egrep -i "$KEYWORDS_ATLANTA" newpages.txt >> Atlanta.txt

GEORGIA=`stat --print=%s Georgia.txt`
ATLANTA=`stat --print=%s Atlanta.txt`

if [ $GEORGIA -ne 0 ];
then
  export CATFILE="Georgia.txt"
  export CATNAME="Georgia"
  $CATEGORIZE
fi

if [ $ATLANTA -ne 0 ];
then
  export CATFILE="Atlanta.txt"
  export CATNAME="Atlanta"
  $CATEGORIZE
fi

rm Georgia.txt
rm Atlanta.txt