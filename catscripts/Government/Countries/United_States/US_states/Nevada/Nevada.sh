#!/bin/bash

KEYWORDS_NEVADA="Nevada"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_NEVADA" newpages.txt >> Nevada.txt

  NEVADA=`stat --print=%s Nevada.txt`

  if [ $NEVADA -ne 0 ];
  then
    export CATFILE="Nevada.txt"
    export CATNAME="Nevada"
    $CATEGORIZE
  fi

  rm Nevada.txt

fi
