#!/bin/bash

KEYWORDS_LATVIA="Latvia"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Latvia\n"
  fi

  LATVIA=`egrep -i "$KEYWORDS_LATVIA" newpages.txt`

  if [ "$LATVIA" != "" ];
  then
    printf "$LATVIA" > Latvia.txt
    export CATFILE="Latvia.txt"
    export CATNAME="Latvia"
    $CATEGORIZE
    rm Latvia.txt
    unset LATVIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Latvia\n"
  fi

fi