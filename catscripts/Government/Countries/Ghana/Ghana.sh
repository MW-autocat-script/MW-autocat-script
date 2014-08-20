#!/bin/bash

KEYWORDS_GHANA="\bGhana"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Ghana"

  GHANA=$(egrep -i "$KEYWORDS_GHANA" "$NEWPAGES")

  if [ "$GHANA" != "" ];
  then
    printf "%s" "$GHANA" > Ghana.txt
    export CATFILE="Ghana.txt"
    export CATNAME="Ghana"
    $CATEGORIZE
    rm Ghana.txt
    unset GHANA
  fi

  debug_end "Ghana"

fi