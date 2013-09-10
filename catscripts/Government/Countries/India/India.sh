#!/bin/bash

KEYWORDS_INDIA="India\b"
KEYWORDS_NEWDELHI="Delhi"
KEYWORDS_INDIA_EXCLUDE="$KEYWORDS_NEWDELHI"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_INDIA" newpages.txt | egrep -iv "$KEYWORDS_NEWDELHI" > India.txt
  egrep -i "$KEYWORDS_NEWDELHI" newpages.txt > NewDelhi.txt

  INDIA=`stat --print=%s India.txt`
  NEWDELHI=`stat --print=%s NewDelhi.txt`

  if [ $INDIA -ne 0 ];
  then
    export CATFILE="India.txt"
    export CATNAME="India"
    $CATEGORIZE
  fi

  if [ $NEWDELHI -ne 0 ];
  then
    export CATFILE="NewDelhi.txt"
    export CATNAME="New Delhi"
    $CATEGORIZE
  fi

  rm India.txt
  rm NewDelhi.txt
fi