#!/bin/bash

KEYWORDS_ANTONYMS="antonym|(What is|What(|')s) the opposite of [a-z]{1,}"


if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Antonyms\n" 
  fi


  ANTONYMS=$(egrep -i "$KEYWORDS_ANTONYMS" newpages.txt)

  if [ "$ANTONYMS" != "" ];
  then
    printf "$ANTONYMS" > Antonyms.txt
    export CATFILE="Antonyms.txt"
    export CATNAME="Antonyms"
    $CATEGORIZE
    rm Antonyms.txt
    unset ANTONYMS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Antonyms\n" 
  fi

fi