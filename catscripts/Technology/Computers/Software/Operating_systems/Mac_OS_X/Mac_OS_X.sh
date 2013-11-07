#!/bin/bash

KEYWORDS_MACOS="Mac(| )OS|OS(| )X"


if [ "$1" == "" ]; #Normal operation
then
  egrep -i "$KEYWORDS_MACOS" newpages.txt >> MacOSX.txt

  MACOS=`stat --print=%s MacOSX.txt`

  if [ $MACOS -ne 0 ];
  then
    export CATFILE="MacOSX.txt"
    export CATNAME="Mac OS X"
    $CATEGORIZE
  fi

  rm MacOSX.txt

fi