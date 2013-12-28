#!/bin/bash

KEYWORDS_BELARUS="Belarus"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Belarus\n"
  fi

  BELARUS=`egrep -i "$KEYWORDS_BELARUS" newpages.txt`

  if [ "$BELARUS" != "" ];
  then
    printf "$BELARUS" > Belarus.txt
    export CATFILE="Belarus.txt"
    export CATNAME="Belarus"
    $CATEGORIZE
    rm Belarus.txt
    unset BELARUS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Belarus\n"
  fi

fi