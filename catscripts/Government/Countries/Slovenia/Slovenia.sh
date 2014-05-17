#!/bin/bash

KEYWORDS_SLOVENIA="Slovenia"
KEYWORDS_SLOVENIA_ALL="$KEYWORDS_SLOVENIA"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Slovenia\n"
  fi

  SLOVENIA=$(egrep -i "$KEYWORDS_SLOVENIA" newpages.txt)

  if [ "$SLOVENIA" != "" ];
  then
    printf "$SLOVENIA" > Slovenia.txt
    export CATFILE="Slovenia.txt"
    export CATNAME="Slovenia"
    $CATEGORIZE
    rm Slovenia.txt
    unset SLOVENIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Slovenia\n"
  fi

fi