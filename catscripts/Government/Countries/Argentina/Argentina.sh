#!/bin/bash

KEYWORDS_ARGENTINA="Argentina|Aregentina"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Argentina\n"
  fi

  ARGENTINA=$(egrep -i "$KEYWORDS_ARGENTINA" newpages.txt)

  if [ "$ARGENTINA" != "" ];
  then
    printf "$ARGENTINA" > Argentina.txt
    export CATFILE="Argentina.txt"
    export CATNAME="Argentina"
    $CATEGORIZE
    rm Argentina.txt
    unset ARGENTINA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Argentina\n"
  fi


fi