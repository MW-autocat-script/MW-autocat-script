#!/bin/bash

KEYWORDS_XBOXONE="X(|-)box(| )(1\b|One)"

egrep -i "$KEYWORDS_XBOXONE" newpages.txt >> XboxOne.txt

XBOXONE=`stat --print=%s XboxOne.txt`

if [ $XBOXONE -ne 0 ];
then
  export CATFILE="XboxOne.txt"
  export CATNAME="Xbox One"
  $CATEGORIZE
fi

rm XboxOne.txt