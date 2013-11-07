#!/bin/bash

KEYWORDS_ITUNES="iTunes|\bi Tunes"

if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_ITUNES" newpages.txt >> iTunes.txt

  ITUNES=`stat --print=%s iTunes.txt`

  if [ $ITUNES -ne 0 ];
  then
    export CATFILE="iTunes.txt"
    export CATNAME="iTunes"
    $CATEGORIZE
  fi

  rm iTunes.txt

fi