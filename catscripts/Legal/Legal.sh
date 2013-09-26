#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b"
KEYWORDS_LAWYERS="attorney|lawyer"
KEYWORDS_DIVORCE="Divorce|alimony"
KEYWORDS_CRIME="\bCrime(|s)\b|criminal"

egrep -i "$KEYWORDS_LEGAL" newpages.txt | egrep -iv "$KEYWORDS_DIVORCE|$KEYWORDS_CRIME|$KEYWORDS_LAWYERS" >> Legal.txt
egrep -i "$KEYWORDS_DIVORCE" newpages.txt >> Divorce.txt
egrep -i "$KEYWORDS_CRIME" newpages.txt >> Crime.txt
egrep -i "$KEYWORDS_LAWYERS" newpages.txt >> Lawyers.txt

LEGAL=`stat --print=%s Legal.txt`
CRIME=`stat --print=%s Crime.txt`
DIVORCE=`stat --print=%s Divorce.txt`
LAWYERS=`stat --print=%s Lawyers.txt`

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

if [ $LAWYERS -ne 0 ];
then
  export CATFILE="Lawyers.txt"
  export CATNAME="Lawyers"
  $CATEGORIZE
fi

rm Legal.txt
rm Crime.txt
rm Divorce.txt
rm Lawyers.txt