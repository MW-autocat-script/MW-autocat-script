#!/bin/bash

KEYWORDS_LIBYA="Libya|Ghadafi"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Libya"

  LIBYA=$(egrep -i "$KEYWORDS_LIBYA" "$NEWPAGES")

  if [ "$LIBYA" != "" ];
  then
    printf "%s" "$LIBYA" > Libya.txt
    export CATFILE="Libya.txt"
    export CATNAME="Libya"
    $CATEGORIZE
    rm Libya.txt
    unset LIBYA
  fi

  debug_end "Libya"

fi