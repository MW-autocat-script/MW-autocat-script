#!/bin/bash

KEYWORDS_RWANDA="Rwanda"
KEYWORDS_RWANDA_ALL="$KEYWORDS_RWANDA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "" ];
  then
    printf "Starting Rwanda\n"
  fi

  RWANDA=$(egrep -i "$KEYWORDS_RWANDA" newpages.txt)

  if [ "$RWANDA" != "" ];
  then
    printf "$RWANDA" > Rwanda.txt
    export CATFILE="Rwanda.txt"
    export CATNAME="Rwanda"
    $CATEGORIZE
    rm Rwanda.txt
    unset RWANDA
  fi

  if [ "$DEBUG" == "" ];
  then
    printf "Finishing Rwanda\n"
  fi

fi