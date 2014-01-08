#!/bin/bash

KEYWORDS_KIRBY="Kirby"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Kirby series\n"
  fi

  KIRBY=`egrep -i "$KEYWORDS_KIRBY" newpages.txt`

  if [ "$KIRBY" != "" ];
  then
    printf "$KIRBY" > Kirby.txt
    export CATFILE="Kirby.txt"
    export CATNAME="Kirby series"
    $CATEGORIZE
    rm Kirby.txt
    unset KIRBY
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Kirby series\n"
  fi

fi