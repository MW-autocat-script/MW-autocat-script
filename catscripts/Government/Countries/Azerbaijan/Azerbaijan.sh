#!/bin/bash

KEYWORDS_AZERBAIJAN="Azerbaijan"
KEYWORDS_AZERBAIJAN_ALL="$KEYWORDS_AZERBAIJAN"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Azerbaijan\n"
  fi

  AZERBAIJAN=$(egrep -i "$KEYWORDS_AZERBAIJAN" newpages.txt)

  if [ "$AZERBAIJAN" != "" ];
  then
    printf "$AZERBAIJAN" > Azerbaijan.txt
    export CATFILE="Azerbaijan.txt"
    export CATNAME="Azerbaijan"
    $CATEGORIZE
    rm Azerbaijan.txt
    unset AZERBAIJAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Azerbaijan\n"
  fi

fi