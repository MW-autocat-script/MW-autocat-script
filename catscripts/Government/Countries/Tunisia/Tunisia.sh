#!/bin/bash

KEYWORDS_TUNISIA="Tunisia"
KEYWORDS_TUNISIA_ALL="$KEYWORDS_TUNISIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Tunisia\n"
  fi

  TUNISIA=$(egrep -i "$KEYWORDS_TUNISIA" newpages.txt)

  if [ "$TUNISIA" != "" ];
  then
    export CATFILE="Tunisia.txt"
    export CATNAME="Tunisia"
    $CATEGORIZE
    rm Tunisia.txt
  fi


  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Tunisia\n"
  fi

fi