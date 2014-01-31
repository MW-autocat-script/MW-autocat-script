#!/bin/bash

KEYWORDS_PERIOD="\.$"
KEYWORDS_PERIOD_EXCLUDE="\b(j|s)r\.$|\bD\.C\.$"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Page titles ending in a period\n"
  fi

  PERIOD="$(egrep -i "$KEYWORDS_PERIOD" newpages.txt | egrep iv "$KEYWORDS_PERIOD_EXCLUDE")"

  if [ "$PERIOD" != "" ];
  then
    printf "%s" "$PERIOD" > Period.txt
    export CATFILE="Period.txt"
    export CATNAME="Page titles ending in a period"
    $CATEGORIZE
    rm Period.txt
    unset PERIOD
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Page titles ending in a period\n"
  fi

fi