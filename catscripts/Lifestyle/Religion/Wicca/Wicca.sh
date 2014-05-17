#!/bin/bash

KEYWORDS_WICCA="Wicca"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Wicca\n"
  fi

  WICCA=$(egrep -i "$KEYWORDS_WICCA" newpages.txt)

  if [ "$WICCA" != "" ];
  then
    export CATFILE="Wicca.txt"
    export CATNAME="Wicca"
    $CATEGORIZE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Wicca\n"
  fi

fi