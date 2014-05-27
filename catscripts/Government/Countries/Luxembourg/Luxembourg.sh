#!/bin/bash

KEYWORDS_LUXEMBOURG="Luxembourg"
KEYWORDS_LUXEMBOURG_ALL="$KEYWORDS_LUXEMBOURG"

if [ "$1" == "" ];
then

  debug_start "Luxembourg"

  LUXEMBOURG=$(egrep -i "$KEYWORDS_LUXEMBOURG" newpages.txt)

  if [ "$LUXEMBOURG" != "" ];
  then
    printf "%s" "$LUXEMBOURG" > Luxembourg.txt
    export CATFILE="Luxembourg.txt"
    export CATNAME="Luxembourg"
    $CATEGORIZE
    rm Luxembourg.txt
    unset LUXEMBOURG
  fi

  debug_end "Luxembourg"

fi