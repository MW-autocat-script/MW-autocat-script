#!/bin/bash

KEYWORDS_INVENTIONS="Who invented [a-z]{1,}$|Who invented the [a-z]{1,}|(When|Where) was the .+ invented"

if [ "$1" == "" ];
then

  debug_start "Inventions"

  INVENTIONS=$(egrep -i "$KEYWORDS_INVENTIONS" newpages.txt)

  if [ "$INVENTIONS" != "" ];
  then
    printf "%s" "$INVENTIONS" > Inventions.txt
    export CATFILE="Inventions.txt"
    export CATNAME="Inventions"
    $CATEGORIZE
    rm Inventions.txt
    unset INVENTIONS
  fi

  debug_end "Inventions"

fi
