#!/bin/bash

KEYWORDS_PERU="Peru"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Peru"

  PERU=$(egrep -i "$KEYWORDS_PERU" "$NEWPAGES")

  if [ "$PERU" != "" ];
  then
    printf "%s" "$PERU" > Peru.txt
    export CATFILE="Peru.txt"
    export CATNAME="Peru"
    $CATEGORIZE
    rm Peru.txt
    unset PERU
  fi

  debug_end "Peru"

fi