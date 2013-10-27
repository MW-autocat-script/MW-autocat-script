#!/bin/bash

KEYWORDS_WISCONSIN="Wisconsin"
KEYWORDS_MILWAUKEE="Milwaukee"
KEYWORDS_WISCONSIN_EXCLUDE="$KEYWORDS_MILWAUKEE"

if [ "$1" == "" ]; #Normal operation
then


  egrep -i "$KEYWORDS_WISCONSIN" newpages.txt | egrep -iv "$KEYWORDS_WISCONSIN_EXCLUDE" >> Wisconsin.txt
  egrep -i "$KEYWORDS_MILWAUKEE" newpages.txt >> Milwaukee.txt

  WISCONSIN=`stat --print=% Wisconsin.txt`
  MILWAUKEE=`stat --print=%s Milwaukee.txt`

  if [ $WISCONSIN -ne 0 ];
  then
    export CATFILE="Wisconsin.txt"
    export CATNAME="Wisconsin"
    $CATEGORIZE
  fi

  if [ $MILWAUKEE -ne 0 ];
  then
    export CATFILE="Milwaukee.txt"
    export CATNAME="Milwaukee"
    $CATEGORIZE
  fi

  rm Wisconsin.txt
  rm Milwaukee.txt

fi