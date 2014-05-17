#!/bin/bash

KEYWORDS_CHILE="\bChile\b|Chilean"
KEYWORDS_CHILE_ALL="$KEYWORDS_CHILE"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Chile\n"
  fi

  CHILE=$(egrep -i "$KEYWORDS_CHILE" newpages.txt)

  if [ "$CHILE" != "" ];
  then
    printf "$CHILE" > Chile.txt
    export CATFILE="Chile.txt"
    export CATNAME="Chile"
    $CATEGORIZE
    rm Chile.txt
    unset CHILE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Chile\n"
  fi

fi