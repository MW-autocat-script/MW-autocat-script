#!/bin/bash

KEYWORDS_PERCYJACKSON="Percy(| )Jackson"

if [ "$1" == "" ];
then
  
  debug_start "Percy Jackson and the Olympians"

  PERCY=$(egrep -i "$KEYWORDS_PERCYJACKSON" "$NEWPAGES")

  if [ "$PERCY" != "" ];
  then
    printf "%s" "$PERCY" > PercyJackson.txt
    export CATFILE="PercyJackson.txt"
    export CATNAME="Percy Jackson and the Olympians"
    $CATEGORIZE
    rm PercyJackson.txt
    unset PERCY
  fi

  debug_end "Percy Jackson and the Olympians"

fi