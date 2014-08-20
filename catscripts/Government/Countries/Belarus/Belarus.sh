#!/bin/bash

KEYWORDS_BELARUS="Belarus"

if [ "$1" == "" ];
then

  debug_start "Belarus"

  BELARUS=$(egrep -i "$KEYWORDS_BELARUS" "$NEWPAGES")

  if [ "$BELARUS" != "" ];
  then
    printf "%s" "$BELARUS" > Belarus.txt
    export CATFILE="Belarus.txt"
    export CATNAME="Belarus"
    $CATEGORIZE
    rm Belarus.txt
    unset BELARUS
  fi

  debug_end "Belarus"

fi