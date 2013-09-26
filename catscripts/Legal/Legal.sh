#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b|lawyer|attorney"
KEYWORDS_DIVORCE="Divorce|alimony"
KEYWORDS_CRIME="\bCrime(|s)\b|criminal"

egrep -i "$KEYWORDS_LEGAL" newpages.txt | egrep -iv "$KEYWORDS_DIVORCE|$KEYWORDS_CRIME" >> Legal.txt
egrep -i "$KEYWORDS_DIVORCE" newpages.txt >> Divorce.txt
egrep -i "$KEYWORDS_CRIME" newpages.txt >> Crime

LEGAL=`stat --print=%s Legal.txt`
CRIME=`stat --print=%s Crime.txt`
DIVORCE=`stat --print=%s Divorce.txt`

if [ $LEGAL -ne 0 ];
then
  export CATFILE="Legal.txt"
  export CATNAME="Legal"
  $CATEGORIZE
fi

if [ $CRIME -ne 0 ];
then
  export CATFILE="Crime.txt"
  export CATNAME="Crime"
  $CATEGORIZE
fi

if [ $DIVORCE -ne 0 ];
then
  export CATFILE="Divorce.txt"
  export CATNAME="Divorce"
  $CATEGORIZE
fi

rm Legal.txt
rm Crime.txt
rm Divorce.txt