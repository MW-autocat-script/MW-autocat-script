#!/bin/bash

KEYWORDS_MARYLAND="Maryland"

egrep -i "$KEYWORDS_MARYLAND" newpages.txt >> Maryland.txt

MARYLAND=`stat --print=%s Maryland.txt`

if [ $MARYLAND -ne 0 ];
then
  export CATFILE="Maryland.txt"
  export CATNAME="Maryland"
  $CATEGORIZE
fi

rm Maryland.txt