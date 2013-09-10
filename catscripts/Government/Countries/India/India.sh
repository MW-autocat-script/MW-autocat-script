#!/bin/bash

KEYWORDS_INDIA="India\b"
KEYWORDS_NEWDELHI="Delhi"
KEYWORDS_MUMBAI="Mumbai|Bombay"
KEYWORDS_INDIA_EXCLUDE="$KEYWORDS_NEWDELHI|$KEYWORDS_MUMBAI"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_INDIA" newpages.txt | egrep -iv "$KEYWORDS_INDIA_EXCLUDE" > India.txt
  egrep -i "$KEYWORDS_NEWDELHI" newpages.txt > NewDelhi.txt
  egrep -i "$KEYWORDS_MUMBAI" newpages.txt > Mumbai.txt

  INDIA=`stat --print=%s India.txt`
  NEWDELHI=`stat --print=%s NewDelhi.txt`
  MUMBAI=`stat --print=%s Mumbai.txt`

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

  if [ $MUMBAI -ne 0 ];
  then
    export CATFILE="Mumbai.txt"
    export CATNAME="Mumbai"
    $CATEGORIZE
  fi

  rm India.txt
  rm NewDelhi.txt
  rm Mumbai.txt
fi