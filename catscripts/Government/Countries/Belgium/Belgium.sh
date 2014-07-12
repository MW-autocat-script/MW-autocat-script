#!/bin/bash

KEYWORDS_BELGIUM="Belgium|Belguim|Belgum"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Belgium"

  BELGIUM=$(egrep -i "$KEYWORDS_BELGIUM" newpages.txt)

  if [ "$BELGIUM" != "" ];
  then
    printf "%s" "$BELGIUM" > Belgium.txt
    export CATFILE="Belgium.txt"
    export CATNAME="Belgium"
    $CATEGORIZE
    rm Belgium.txt
    unset BELGIUM
  fi

  debug_end "Belgium"

fi