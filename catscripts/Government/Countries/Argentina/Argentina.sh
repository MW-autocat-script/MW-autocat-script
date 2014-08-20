#!/bin/bash

KEYWORDS_ARGENTINA="Ar(|e)gentina"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Argentina"

  ARGENTINA=$(egrep -i "$KEYWORDS_ARGENTINA" "$NEWPAGES")

  if [ "$ARGENTINA" != "" ];
  then
    printf "%s" "$ARGENTINA" > Argentina.txt
    export CATFILE="Argentina.txt"
    export CATNAME="Argentina"
    $CATEGORIZE
    rm Argentina.txt
    unset ARGENTINA
  fi

  debug_end "Argentina"

fi