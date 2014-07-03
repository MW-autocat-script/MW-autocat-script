#!/bin/bash

KEYWORDS_ENGLISHTOFRENCH="\bin(| )French$|French(| )word(| )for"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "English to French"

  ETOF=$(egrep -i "$KEYWORDS_ENGLISHTOFRENCH" newpages.txt)

  if [ "$ETOF" != "" ];
  then
    printf "%s" "$ETOF" > EnglishtoFrench.txt
    export CATFILE="EnglishtoFrench.txt"
    export CATNAME="English to French"
    $CATEGORIZE
    rm EnglishtoFrench.txt
    unset ETOF
  fi

  debug_end "English to French"

fi