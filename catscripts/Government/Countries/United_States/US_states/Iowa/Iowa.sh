#!/bin/bash

KEYWORDS_IOWA="\bIowa"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Iowa\n"
  fi

  IOWA=$(egrep -i "$KEYWORDS_IOWA" newpages.txt)

  if [ "$IOWA" != "" ];
  then
    printf "$IOWA" > Iowa.txt
    export CATFILE="Iowa.txt"
    export CATNAME="Iowa"
    $CATEGORIZE
    rm Iowa.txt
    unset IOWA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Iowa\n"
  fi

fi