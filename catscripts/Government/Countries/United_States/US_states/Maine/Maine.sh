#!/bin/bash

KEYWORDS_MAINE="\bMaine"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Maine"

  MAINE=$(egrep -i "$KEYWORDS_MAINE" "$NEWPAGES")

  if [ "$MAINE" != "" ];
  then
    printf "%s" "$MAINE" > Maine.txt
    export CATFILE="Maine.txt"
    export CATNAME="Maine"
    $CATEGORIZE
    rm Maine.txt
    unset MAINE
  fi

  debug_end "Maine"

fi