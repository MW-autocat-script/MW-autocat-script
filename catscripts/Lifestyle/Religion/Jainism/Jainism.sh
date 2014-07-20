#!/bin/bash

KEYWORDS_JAINISM="Jain(|s|ism)\b"

if [ "$1" == "" ];
then
  
  debug_start "Jainism"

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

  debug_end "Jainism"

fi