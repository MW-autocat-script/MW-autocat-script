#!/bin/bash

KEYWORDS_NARUTO="Naruto|Hokage"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Naruto"
  
  NARUTO=$(egrep -i "$KEYWORDS_NARUTO" "$NEWPAGES")

  if [ "$NARUTO" != "" ];
  then
    printf "%s" "$NARUTO" > Naruto.txt
    export CATFILE="Naruto.txt"
    export CATNAME="Naruto"
    $CATEGORIZE
    rm Naruto.txt
    unset NARUTO
  fi

  debug_end "Naruto"

fi