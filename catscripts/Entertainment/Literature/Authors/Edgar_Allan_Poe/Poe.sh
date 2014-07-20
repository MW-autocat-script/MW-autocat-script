#!/bin/bash

KEYWORDS_POE="\bPoe\b"

if [ "$1" == "" ];
then
  
  debug_start "Edgar Allan Poe"

  POE=$(egrep -i "$KEYWORDS_POE" newpages.txt)

  if [ "$POE" != "" ];
  then
    printf "%s" "$POE" > Poe.txt
    export CATFILE="Poe.txt"
    export CATNAME="Edgar Allan Poe"
    $CATEGORIZE
    rm Poe.txt
  fi

  debug_end "Edgar Allan Poe"

fi