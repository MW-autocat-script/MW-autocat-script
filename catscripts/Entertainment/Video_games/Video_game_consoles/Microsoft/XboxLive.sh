#!/bin/bash

KEYWORDS_XBOXLIVE="X(|-)box(| )Live"

if [ "$1" == "" ];
then
  
  debug_start "Xbox Live"

  XBOXLIVE=$(egrep -i "$KEYWORDS_XBOXLIVE" "$NEWPAGES")

  if [ "$XBOXLIVE" != "" ];
  then
    printf "%s" "$XBOXLIVE" > XboxLive.txt
    export CATFILE="XboxLive.txt"
    export CATNAME="Xbox Live"
    $CATEGORIZE
    rm XboxLive.txt
    unset XBOXLIVE
  fi

  debug_end "Xbox Live"

fi