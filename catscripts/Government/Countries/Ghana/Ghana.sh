#!/bin/bash

KEYWORDS_GHANA="\bGhana"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Ghana\n"
  fi

  GHANA=`egrep -i "$KEYWORDS_GHANA" newpages.txt`

  if [ "$GHANA" != "" ];
  then
    printf "$GHANA" > Ghana.txt
    export CATFILE="Ghana.txt"
    export CATNAME="Ghana"
    $CATEGORIZE
    rm Ghana.txt
    unset GHANA
  fi

fi