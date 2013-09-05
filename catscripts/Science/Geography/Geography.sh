#!/bin/bash

KEYWORDS_GEOGRAPHY="Geography"

if [ "$1"=="" ];
then

  egrep -i "$KEYWORDS_GEOGRAPHY" newpages.txt > Geography.txt

  GEOGRAPHY=`stat --print=%s Geography.txt`

  if [ $GEOGRAPHY -ne 0 ];
  then
    export CATFILE="Geography.txt"
    export CATNAME="Geography"
    $CATEGORIZE
  fi

fi