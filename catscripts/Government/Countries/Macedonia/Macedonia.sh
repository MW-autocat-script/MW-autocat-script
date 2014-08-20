#!/bin/bash

KEYWORDS_MACEDONIA="Macedonia"

if [ "$1" == "" ];
then

  debug_start "Macedonia"

  MACEDONIA=$(egrep -i "$KEYWORDS_MACEDONIA" "$NEWPAGES")

  if [ "$MACEDONIA" != "" ];
  then
    printf "%s" "$MACEDONIA" > Macedonia.txt
    export CATFILE="Macedonia.txt"
    export CATNAME="Macedonia"
    $CATEGORIZE
    rm Macedonia.txt
    unset MACEDONIA
  fi

  debug_end "Macedonia"

fi