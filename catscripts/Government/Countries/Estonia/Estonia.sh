#!/bin/bash

KEYWORDS_ESTONIA="Estonia"
KEYWORDS_ESTONIA_ALL="$KEYWORDS_ESTONIA"

if [ "$1" == "" ];
then
  
  debug_start "Estonia"

  ESTONIA=$(egrep -i "$KEYWORDS_ESTONIA" newpages.txt)

  if [ "$ESTONIA" != "" ];
  then
    printf "%s" "$ESTONIA" > Estonia.txt
    export CATFILE="Estonia.txt"
    export CATNAME="Estonia"
    $CATEGORIZE
    rm Estonia.txt
    unset ESTONIA
  fi

  debug_end "Estonia"

fi