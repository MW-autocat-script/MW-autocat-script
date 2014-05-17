#!/bin/bash

KEYWORDS_INVENTIONS="Who invented [a-z]{1,}$|Who invented the [a-z]{1,}|(When|Where) was the .+ invented"

if [ "$1" == "" ];
then

  INVENTIONS=$(egrep -i "$KEYWORDS_INVENTIONS" newpages.txt)

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Inventions\n"
  fi

  if [ "$INVENTIONS" != "" ];
  then
    printf "$INVENTIONS" > Inventions.txt
    export CATFILE="Inventions.txt"
    export CATNAME="Inventions"
    $CATEGORIZE
    rm Inventions.txt
    unset INVENTIONS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Inventions\n"
  fi

fi
