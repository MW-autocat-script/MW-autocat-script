#!/bin/bash

KEYWORDS_KENYA="Kenya"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Kenya\n"
  fi


  KENYA=$(egrep -i "$KEYWORDS_KENYA" newpages.txt)

  if [ "$KENYA" != "" ];
  then
    printf "$KENYA" > Kenya.txt
    export CATFILE="Kenya.txt"
    export CATNAME="Kenya"
    $CATEGORIZE
    rm Kenya.txt
    unset KENYA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Kenya\n"
  fi

fi