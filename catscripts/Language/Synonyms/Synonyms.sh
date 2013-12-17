#!/bin/bash

KEYWORDS_SYNONYMS="synonym|another word for"

if [ "$1" == "" ]; #Normal operation
then

  SYNONYMS=`egrep -i "$KEYWORDS_SYNONYMS" newpages.txt`

  if [ "$DEBUG" == "yes" ]; 
  then
    printf "Starting Synonyms\n"
  fi

  if [ "$SYNONYMS" != "" ];
  then
    printf "$SYNONYMS" > Synonyms.txt
    export CATFILE="Synonyms.txt"
    export CATNAME="Synonyms"
    $CATEGORIZE
    rm Synonyms.txt
    unset SYNONYMS
  fi

  if [ "$DEBUG" == "yes" ]; 
  then
    printf "Finishing Synonyms\n"
  fi

fi
