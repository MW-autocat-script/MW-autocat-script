#!/bin/bash

KEYWORDS_ALGERIA="Algeria"

if [ "$1" == "" ];
then

  debug_start "Algeria"

  ALGERIA=$(egrep -i "$KEYWORDS_ALGERIA" "$NEWPAGES")

  if [ "$ALGERIA" != "" ];
  then
    printf "%s" "$ALGERIA" > Algeria.txt
    export CATFILE="Algeria.txt"
    export CATNAME="Algeria"
    $CATEGORIZE
    rm Algeria.txt
    unset ALGERIA
  fi

  debug_end "Algeria"

fi