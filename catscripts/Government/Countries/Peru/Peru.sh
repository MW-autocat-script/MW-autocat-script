#!/bin/bash

KEYWORDS_PERU="Peru"

if [ "$1" == "" ]; #Normal operation
then

  PERU=$(egrep -i "$KEYWORDS_PERU" newpages.txt)

  if [ "$PERU" != "" ];
  then
    egrep -i "$KEYWORDS_PERU" newpages.txt > Peru.txt
    export CATFILE="Peru.txt"
    export CATNAME="Peru"
    $CATEGORIZE
    rm Peru.txt
    unset PERU
  fi

fi