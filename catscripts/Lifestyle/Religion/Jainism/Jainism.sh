#!/bin/bash

KEYWORDS_JAINISM="Jain(|s|ism)\b"
KEYWORDS_JAINISM_ALL="$KEYWORDS_JAINISM"

if [ "$1" == "" ];
then
  
  debug_start "Jainism"

  JAINISM="$(egrep -i "$KEYWORDS_JAINISM" "$NEWPAGES")"

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