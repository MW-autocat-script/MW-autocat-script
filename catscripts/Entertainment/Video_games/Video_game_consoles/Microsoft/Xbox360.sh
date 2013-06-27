#!/bin/bash

KEYWORDS_XBOX360="X(|-)box(| )360"

egrep -i "$KEYWORDS_XBOX360" newpages.txt >> Xbox360.txt

X360=`stat --print=%s Xbox360.txt`

if [ $X360 -ne 0 ];
then
  export CATFILE="Xbox360.txt"
  export CATNAME="Xbox 360"
  $CATEGORIZE
fi

rm Xbox360.txt
