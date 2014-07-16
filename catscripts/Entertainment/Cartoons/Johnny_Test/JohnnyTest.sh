#!/bin/bash

KEYWORDS_JOHNNYTEST="Johnny(| )Test"

if [ "$1" == "" ];
then

  debug_start "Johnny Test"

  JOHNNYTEST="$(egrep -i "$KEYWORDS_JOHNNYTEST" newpages.txt)"

  if [ "$JOHNNYTEST" != "" ];
  then
    printf "%s" "$JOHNNYTEST" > JohnnyTest.txt
    export CATFILE="JohnnyTest.txt"
    export CATNAME="Johnny Test"
    $CATEGORIZE
    rm JohnnyTest.txt
    unset JOHNNYTEST
  fi

  debug_end "Johnny Test"

fi