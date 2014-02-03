#!/bin/bash

KEYWORDS_PORTUGAL="Portugal"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Portugal\n"
  fi

  PORTUGAL="$(egrep -i "$KEYWORDS_PORTUGAL" newpages.txt)"

  if [ "$PORTUGAL" != "" ];
  then
    printf "%s" "$PORTUGAL" > Portugal.txt
    export CATFILE="Portugal.txt"
    export CATNAME="Portugal"
    $CATEGORIZE
    rm Portugal.txt
    unset PORTUGAL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Portugal\n"
  fi

fi