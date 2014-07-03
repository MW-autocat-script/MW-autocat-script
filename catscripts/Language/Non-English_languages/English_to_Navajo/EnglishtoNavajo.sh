#!/bin/bash

KEYWORDS_ENGLISHTONAVAJO=".+in Navajo$]|Navajo word for"

if [ "$1" == "" ];
then

  debug_start "English to Navajo"

  ENGLISHTONAVAJO=$(egrep -i "$KEYWORDS_ENGLISHTONAVAJO" newpages.txt)

  if [ "$ENGLISHTONAVAJO" != "" ];
  then
    printf "%s" "$ENGLISHTONAVAJO" > EnglishtoNavajo.txt
    export CATFILE="EnglishtoNavajo.txt"
    export CATNAME="English to Navajo"
    $CATEGORIZE
    rm EnglishtoNavajo.txt
    unset ENGLISHTONAVAJO
  fi

  debug_end "English to Navajo"

fi