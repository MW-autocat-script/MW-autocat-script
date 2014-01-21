#!/bin/bash

KEYWORDS_SLOVAKIA="Slovakia(|s)\b"
KEYWORDS_SLOVAKIA_ALL="$KEYWORDS_SLOVAKIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Slovakia\n"
  fi

  SLOVAKIA=`egrep -i "$KEYWORDS_SLOVAKIA" newpages.txt`

  if [ "$SLOVAKIA" != "" ];
  then
    printf "$SLOVAKIA" > Slovakia.txt
    export CATFILE="Slovakia.txt"
    export CATNAME="Slovakia"
    $CATEGORIZE
    rm Slovakia.txt
    unset SLOVAKIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Slovakia\n"
  fi

fi