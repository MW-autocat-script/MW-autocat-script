#!/bin/bash

KEYWORDS_ANGOLA="Angola"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" ==  "yes" ];
  then
    printf "Starting Angola\n"
  fi

  ANGOLA=$(egrep -i "$KEYWORDS_ANGOLA" newpages.txt)

  if [ "$ANGOLA" != "" ];
  then
    printf "$ANGOLA" > Angola.txt
    export CATFILE="Angola.txt"
    export CATNAME="Angola"
    $CATEGORIZE
    rm Angola.txt
    unset ANGOLA
  fi

  if [ "$DEBUG" ==  "yes" ];
  then
    printf "Finishing Angola\n"
  fi

fi