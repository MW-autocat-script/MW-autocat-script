#!/bin/bash

KEYWORDS_ANDES="\bAndes"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_ANDES" newpages.txt >> Andes.txt

  ANDES=`stat --print=%s Andes.txt`

  if [ $ANDES -ne 0 ];
  then
    export CATFILE="Andes.txt"
    export CATNAME="Andes"
    $CATEGORIZE
  fi

  rm Andes.txt

fi