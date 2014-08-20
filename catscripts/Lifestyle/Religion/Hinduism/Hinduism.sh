#!/bin/bash

KEYWORDS_HINDUISM="Hindu(|s)\b|Hinduism"
KEYWORDS_HINDUISM_ALL="$KEYWORDS_HINDUISM"

if [ "$1" == "" ];
then
  
  debug_start "Hinduism"

  HINDUISM="$(egrep -i "$KEYWORDS_HINDUISM" "$NEWPAGES")"

  if [ "$HINDUISM" != "" ];
  then
    printf "%s" "$HINDUISM" > Hinduism.txt
    export CATFILE="Hinduism.txt"
    export CATNAME="Hinduism"
    $CATEGORIZE
    rm Hinduism.txt
    unset HINDUISM
  fi

  debug_end "Hinduism"

fi