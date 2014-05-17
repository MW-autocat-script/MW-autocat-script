#!/bin/bash

KEYWORDS_WALES="Wales"
KEYWORDS_CARDIFF="Cardiff"
KEYWORDS_WALES_EXCLUDE="$KEYWORDS_CARDIFF|Jim(|bo|my)(| )Wales|New(| )South(| )Wales"

egrep -i "$KEYWORDS_WALES" newpages.txt | egrep -iv "$KEYWORDS_WALES_EXCLUDE" >> Wales.txt
egrep -i "$KEYWORDS_CARDIFF" newpages.txt >> Cardiff.txt

WALES=$(stat --print=%s Wales.txt)
CARDIFF=$(stat --print=%s Cardiff.txt)

if [ $WALES -ne 0 ];
then
  export CATFILE="Wales.txt"
  export CATNAME="Wales"
  $CATEGORIZE
fi

if [ $CARDIFF -ne 0 ];
then
  export CATFILE="Cardiff.txt"
  export CATNAME="Cardiff"
  $CATEGORIZE
fi

rm Wales.txt
rm Cardiff.txt