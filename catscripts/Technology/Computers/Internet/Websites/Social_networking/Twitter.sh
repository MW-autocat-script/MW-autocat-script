#!/bin/bash

KEYWORDS_TWITTER="Twitter"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_TWITTER" newpages.txt >> Twitter.txt

  TWITTER=`stat --print=%s Twitter.txt`

  if [ $TWITTER -ne 0 ];
  then
    export CATFILE="Twitter.txt"
    export CATNAME="Twitter"
    $CATEGORIZE
  fi

  rm Twitter.txt

fi