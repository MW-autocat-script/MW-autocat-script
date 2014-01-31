#!/bin/bash

KEYWORDS_LONG="^(.){150,}$"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Long page titles\n"
  fi

  LONG="$(egrep -i "$KEYWORDS_LONG" newpages.txt)"

  if [ "$LONG" != "" ];
  then
    printf "%s" "$LONG" > Long.txt
    export CATFILE="Long.txt"
    export CATNAME="Long page titles"
    $CATEGORIZE
    rm Long.txt
    unset LONG
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Long page titles\n"
  fi

fi