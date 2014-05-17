#!/bin/bash

KEYWORDS_BENIN="Benin"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Benin\n"
  fi

  BENIN=$(egrep -i "$KEYWORDS_BENIN" newpages.txt)

  if [ "$BENIN" != "" ];
  then
    printf "$BENIN" > Benin.txt
    export CATFILE="Benin.txt"
    export CATNAME="Benin"
    $CATEGORIZE
    rm Benin.txt
    unset BENIN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Benin\n"
  fi

fi