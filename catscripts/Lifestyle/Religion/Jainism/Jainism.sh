#!/bin/bash

KEYWORDS_JAINISM="Jain(|s|ism)\b"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Jainism\n"
  fi

  JAINISM="$(egrep -i "$KEYWORDS_JAINISM" newpages.txt)"

  if [ "$JAINISM" != "" ];
  then
    printf "%s" "$JAINISM" > Jainism.txt
    export CATFILE="Jainism.txt"
    export CATNAME="Jainism"
    $CATEGORIZE
    rm Jainism.txt
    unset JAINISM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Jainism\n"
  fi

fi