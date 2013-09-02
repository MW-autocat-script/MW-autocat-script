#!/bin/bash

KEYWORDS_MINNESOTA="Minnesota"

egrep -i "$KEYWORDS_MINNESOTA" newpages.txt >> Minnesota.txt

MINNESOTA=`stat --print=%s Minnesota.txt`

if [ $MINNESOTA -ne 0 ];
then
  export CATFILE="Minnesota.txt"
  export CATNAME="Minnesota"
  $CATEGORIZE
fi

rm Minnesota.txt