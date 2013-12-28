#!/bin/bash

KEYWORDS_PAKISTAN="Pakistan"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pakistan\n"
  fi

  PAKISTAN=`egrep -i "$KEYWORDS_PAKISTAN" newpages.txt`

  if [ "$PAKISTAN" != "" ];
  then
    printf "$PAKISTAN" > Pakistan.txt
    export CATFILE="Pakistan,txt"
    export CATNAME="Pakistan"
    $CATEGORIZE
    rm Pakistan.txt
    unset PAKISTAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pakistan\n"
  fi

fi