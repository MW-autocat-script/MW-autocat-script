#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b|lawyer|attorney"

egrep -i "$KEYWORDS_LEGAL" newpages.txt >> Legal.txt

LEGAL=`stat --print=%s Legal.txt`

if [ $LEGAL -ne 0 ];
then
  export CATFILE="Legal.txt"
  export CATNAME="Legal"
  $CATEGORIZE
fi

rm Legal.txt