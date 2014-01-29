#!/bin/bash

KEYWORDS_VERMONT="Vermont|Montpelier"
KEYWORDS_VERMONT_ALL="$KEYWORDS_VERMONT"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Vermont\n"
  fi

  VERMONT=$(egrep -i "$KEYWORDS_VERMONT" newpages.txt)

  if [ "$VERMONT" != "" ];
  then
    printf "%s" "$VERMONT" > Vermont.txt
    export CATFILE="Vermont.txt"
    export CATNAME="Vermont"
    $CATEGORIZE
    rm Vermont.txt
    unset VERMONT
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Vermont\n"
  fi

fi