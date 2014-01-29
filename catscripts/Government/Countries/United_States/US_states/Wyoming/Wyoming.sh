#!/bin/bash

KEYWORDS_WYOMING="Wyoming"
KEYWORDS_WYOMING_ALL="$KEYWORDS_WYOMING"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Wyoming\n"
  fi

  WYOMING="$(egrep -i "$KEYWORDS_WYOMING" newpages.txt)"

  if [ "$WYOMING" != "" ];
  then
    printf "%s" "$WYOMING" > Wyoming.txt
    export CATFILE="Wyoming.txt"
    export CATNAME="Wyoming"
    $CATEGORIZE
    rm Wyoming.txt
    unset WYOMING
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Wyoming\n"
  fi

fi