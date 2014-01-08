#!/bin/bash

KEYWORDS_SWEDEN="Sweden"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Sweden\n"
  fi

  SWEDEN=`egrep -i "$KEYWORDS_SWEDEN" newpages.txt`

  if [ "$SWEDEN" != "" ];
  then
    printf "$SWEDEN" > Sweden.txt
    export CATFILE="Sweden.txt"
    export CATNAME="Sweden"
    $CATEGORIZE
    rm Sweden.txt
    unset SWEDEN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Sweden\n"
  fi

fi