#!/bin/bash

KEYWORDS_NARUTO="Naruto|Hokage"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Naruto\n"
  fi
  
  NARUTO=`egrep -i "$KEYWORDS_NARUTO" newpages.txt`

  if [ "$NARUTO" != "" ];
  then
    printf "$NARUTO" > Naruto.txt
    export CATFILE="Naruto.txt"
    export CATNAME="Naruto"
    $CATEGORIZE
    rm Naruto.txt
    unset NARUTO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Naruto\n"
  fi

fi