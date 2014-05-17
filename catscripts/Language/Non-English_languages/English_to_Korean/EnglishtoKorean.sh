#!/bin/bash

KEYWORDS_ENGLISHTOKOREAN="How (to|do you) (say|spell).+ in Korean|What is the Korean word for"

if [ "$1" == "" ]; #Normal operation
then

  KOREAN=$(egrep -i "$KEYWORDS_ENGLISHTOKOREAN" newpages.txt)

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting English to Korean\n"
  fi

  if [ "$KOREAN" != "" ];
  then
    printf "$KOREAN" > EnglishtoKorean.txt
    export CATFILE="EnglishtoKorean.txt"
    export CATNAME="English to Korean"
    $CATEGORIZE
    rm EnglishtoKorean.txt
    unset KOREAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing English to Korean\n"
  fi

fi

