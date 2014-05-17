#!/bin/bash

KEYWORDS_SPAIN="Spain"
KEYWORDS_BARCELONA="Barcelona"
KEYWORDS_MADRID="Madrid"
KEYWORDS_SPAIN_EXCLUDE="$KEYWORDS_BARCELONA|$KEYWORDS_MADRID"


SPAIN=$(egrep -i "$KEYWORDS_SPAIN" newpages.txt | egrep -iv "$KEYWORDS_SPAIN_EXCLUDE")
BARCELONA=$(egrep -i "$KEYWORDS_BARCELONA" newpages.txt)
MADRID=$(egrep -i "$KEYWORDS_MADRID" newpages.txt)

if [ "$SPAIN" != "" ];
then
  printf "%s" "$SPAIN" > Spain.txt
  export CATFILE="Spain.txt"
  export CATNAME="Spain"
  $CATEGORIZE
  rm Spain.txt
  unset SPAIN
fi

if [ "$BARCELONA" != "" ];
then
  printf "%s" "$BARCELONA" > Barcelona.txt
  export CATFILE="Barcelona.txt"
  export CATNAME="Barcelona"
  $CATEGORIZE
  rm Barcelona.txt
  unset BARCELONA
fi

if [ "$MADRID" != "" ];
then
  printf "%s" "$MADRID" > Madrid.txt
  export CATFILE="Madrid.txt"
  export CATNAME="Madrid"
  $CATEGORIZE
  rm Madrid.txt
  unset MADRID
fi