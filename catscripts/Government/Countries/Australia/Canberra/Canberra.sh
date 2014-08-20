#!/bin/bash

KEYWORDS_CANBERRA="Canberra"
KEYWORDS_CANBERRA_ALL="$KEYWORDS_CANBERRA"

if [ "$1" == "" ];
then

  debug_start "Canberra"

  CANBERRA="$(egrep -i "$KEYWORDS_CANBERRA" "$NEWPAGES")"

  if [ "$CANBERRA" != "" ];
  then
    printf "%s" "$CANBERRA" > Canberra.txt
    export CATFILE="Canberra.txt"
    export CATNAME="Canberra"
    $CATEGORIZE
    rm Canberra.txt
    unset CANBERRA
  fi

  debug_end "Canberra"

fi