#!/bin/bash

KEYWORDS_KIRBY="Kirby"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kirby series"

  KIRBY=$(egrep -i "$KEYWORDS_KIRBY" newpages.txt)

  if [ "$KIRBY" != "" ];
  then
    printf "%s" "$KIRBY" > Kirby.txt
    export CATFILE="Kirby.txt"
    export CATNAME="Kirby series"
    $CATEGORIZE
    rm Kirby.txt
    unset KIRBY
  fi

  debug_end "Kirby series"

fi