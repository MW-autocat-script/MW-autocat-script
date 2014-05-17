#!/bin/bash

KEYWORDS_KAZAKHSTAN="Kazakhstan"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Kazakhstan\n"
  fi

  KAZAKHSTAN=$(egrep -i "$KEYWORDS_KAZAKHSTAN" newpages.txt)

  if [ "$KAZAKHSTAN" != "" ];
  then
    printf "$KAZAKHSTAN" > Kazakhstan.txt
    export CATFILE="Kazakhstan.txt"
    export CATNAME="Kazakhstan"
    $CATEGORIZE
    rm Kazakhstan.txt
    unset KAZAKHSTAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Kazakhstan\n"
  fi

fi