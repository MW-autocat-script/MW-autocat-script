#!/bin/bash

KEYWORDS_FACEBOOK="Face(| )book"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_FACEBOOK" newpages.txt >> Facebook.txt

  FACEBOOK=$(stat --print=%s Facebook.txt)

  if [ $FACEBOOK -ne 0 ];
  then
    export CATFILE="Facebook.txt"
    export CATNAME="Facebook"
    $CATEGORIZE
  fi

  rm Facebook.txt

fi