#!/bin/bash

KEYWORDS_HINDUISM="Hindu(|s)\b|Hinduism"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Hinduism\n"
  fi

  HINDUISM="$(egrep -i "$KEYWORDS_HINDUISM" newpages.txt)"

  if [ "$HINDUISM" != "" ];
  then
    printf "%s" "$HINDUISM" > Hinduism.txt
    export CATFILE="Hinduism.txt"
    export CATNAME="Hinduism"
    $CATEGORIZE
    rm Hinduism.txt
    unset HINDUISM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Hinduism\n"
  fi

fi