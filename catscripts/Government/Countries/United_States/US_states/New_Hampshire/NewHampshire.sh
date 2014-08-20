#!/bin/bash

KEYWORDS_NEWHAMPSHIRE="New(| )Hampshire|,(| )N(|\.)H(|\.)$"
KEYWORDS_NEWHAMPSHIRE_ALL="$KEYWORDS_NEWHAMPSHIRE"

if [ "$1" == "" ];
then
  
  debug_start "New Hampshire"

  NEWHAMPSHIRE=$(egrep -i "$KEYWORDS_NEWHAMPSHIRE" "$NEWPAGES")
  
  if [ "$NEWHAMPSHIRE" != "" ];
  then
    printf "%s" "$NEWHAMPSHIRE" > NewHampshire.txt
    export CATFILE="NewHampshire.txt"
    export CATNAME="New Hampshire"
    $CATEGORIZE
    rm NewHampshire.txt
    unset NEWHAMPSHIRE
  fi

  debug_end "New Hampshire"

fi