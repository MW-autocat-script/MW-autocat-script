#!/bin/bash

KEYWORDS_MAINE="\bMaine"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Maine\n"
  fi

  MAINE=`egrep -i "$KEYWORDS_MAINE" newpages.txt`

  if [ "$MAINE" != "" ];
  then
    printf "$MAINE" > Maine.txt
    export CATFILE="Maine.txt"
    export CATNAME="Maine"
    $CATEGORIZE
    rm Maine.txt
    unset MAINE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Maine\n"
  fi

fi