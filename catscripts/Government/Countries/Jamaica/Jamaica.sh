#!/bin/bash

KEYWORDS_JAMAICA="Jamaica"
KEYWORDS_JAMAICA_ALL="$KEYWORDS_JAMAICA"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Jamaica\n"
  fi

  JAMAICA=`egrep -i "$KEYWORDS_JAMAICA" newpages.txt`

  if [ "$JAMAICA" != "" ];
  then
    printf "$JAMAICA" > Jamaica.txt
    export CATFILE="Jamaica.txt"
    export CATNAME="Jamaica"
    $CATEGORIZE
    rm Jamaica.txt
    unset JAMAICA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Jamaica\n"
  fi

fi