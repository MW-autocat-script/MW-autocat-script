#!/bin/bash

KEYWORDS_MYSPACE="Myspace"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_MYSPACE" newpages.txt >> Myspace.txt

  MYSPACE=`stat --print=%s Myspace.txt`

  if [ $MYSPACE -ne 0 ];
  then
    export CATFILE="Myspace.txt"
    export CATNAME="Myspace"
    $CATEGORIZE
  fi
  
  rm Myspace.txt
fi