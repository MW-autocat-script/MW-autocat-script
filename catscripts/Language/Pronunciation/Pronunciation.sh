#!/bin/bash

KEYWORDS_PRONUNCIATION="How do you pronounce|How is .+ pronounced|pron(|o)unciation"


if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pronunciation\n"
  fi

  PRONUNCIATION=`egrep -i "$KEYWORDS_PRONUNCIATION" newpages.txt`

  if [ "$PRONUNCIATION" != "" ];
  then
    printf "$PRONUNCIATION" > Pronunciation.txt
    export CATFILE="Pronunciation.txt"
    export CATNAME="Pronunciation"
    $CATEGORIZE
    rm Pronunciation.txt
    unset PRONUNCIATION
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pronunciation\n"
  fi

fi