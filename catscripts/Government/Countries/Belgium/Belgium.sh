#!/bin/bash

KEYWORDS_BELGIUM="Belgium|Belguim|Belgum"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Belgium\n"
  fi

  BELGIUM=$(egrep -i "$KEYWORDS_BELGIUM" newpages.txt)

  if [ "$BELGIUM" != "" ];
  then
    printf "$BELGIUM" > Belgium.txt
    export CATFILE="Belgium.txt"
    export CATNAME="Belgium"
    $CATEGORIZE
    rm Belgium.txt
    unset BELGIUM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Belgium\n"
  fi

fi