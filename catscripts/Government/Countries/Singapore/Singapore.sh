#!/bin/bash

KEYWORDS_SINGAPORE="Singapore"

if [ "$1" == "" ];
then
  
  debug_start "Singapore"

  SINGAPORE=$(egrep -i "$KEYWORDS_SINGAPORE" newpages.txt)

  if [ "$SINGAPORE" != "" ];
  then
    printf "%s" "$SINGAPORE" > Singapore.txt
    export CATFILE="Singapore.txt"
    export CATNAME="Singapore"
    $CATEGORIZE
    rm Singapore.txt
    unset SINGAPORE
  fi

  debug_end "Singapore"

fi