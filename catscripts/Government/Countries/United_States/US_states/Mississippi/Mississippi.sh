#!/bin/bash

KEYWORDS_MISSISSIPPI="Mississippi"


egrep -i "$KEYWORDS_MISSISSIPPI" newpages.txt >> Mississippi.txt

MISSISSIPPI=`stat --print=%s Mississippi.txt`

if [ $MISSISSIPPI -ne 0 ];
then
  export CATFILE="Mississippi.txt"
  export CATNAME="Mississippi"
  $CATEGORIZE
fi

rm Mississippi.txt