#!/bin/bash

KEYWORDS_LIBYA="Libya|Ghadafi"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Libya\n"
  fi

  LIBYA=$(egrep -i "$KEYWORDS_LIBYA" newpages.txt)

  if [ "$LIBYA" != "" ];
  then
    printf "$LIBYA" > Libya.txt
    export CATFILE="Libya.txt"
    export CATNAME="Libya"
    $CATEGORIZE
    rm Libya.txt
    unset LIBYA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Libya\n"
  fi

fi