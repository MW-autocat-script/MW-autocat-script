#!/bin/bash

KEYWORDS_ARMENIA="Armenia"
KEYWORDS_ARMENIA_ALL="$KEYWORDS_ARMENIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Armenia\n"
  fi

  ARMENIA=$(egrep -i "$KEYWORDS_ARMENIA" newpages.txt)

  if [ "$ARMENIA" != "" ];
  then
    printf "$ARMENIA" > Armenia.txt
    export CATFILE="Armenia.txt"
    export CATNAME="Armenia"
    $CATEGORIZE
    rm Armenia.txt
    unset ARMENIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Armenia\n"
  fi

fi

