#!/bin/bash

KEYWORDS_XBOX="X(|-)box"
KEYWORDS_XBOX_EXCLUDE="X(|-)box(| )(1\b|360|One|Live)"

egrep -i "$KEYWORDS_XBOX" newpages.txt | egrep -iv "$KEYWORDS_XBOX_EXCLUDE" >> Xbox.txt

XBOX=`stat --print=%s Xbox.txt`

if [ $XBOX -ne 0 ];
then
  export CATFILE="Xbox.txt"
  export CATNAME="Xbox"
  $CATEGORIZE
fi

rm Xbox.txt