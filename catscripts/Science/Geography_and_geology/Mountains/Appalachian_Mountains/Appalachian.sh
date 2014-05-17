#!/bin/bash

KEYWORDS_APPALACHIAN="Appalachian"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_APPALACHIAN" newpages.txt >> Appalachian.txt

  APPALACHIAN=$(stat --print=%s Appalachian.txt)

  if [ $APPALACHIAN -ne 0 ];
  then
    export CATFILE="Appalachian.txt"
    export CATNAME="Appalachian Mountains"
    $CATEGORIZE
  fi

  rm Appalachian.txt

fi