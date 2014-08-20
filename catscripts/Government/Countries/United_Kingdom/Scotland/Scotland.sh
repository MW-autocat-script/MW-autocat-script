#!/bin/bash

KEYWORDS_SCOTLAND="Scotland"
KEYWORDS_SCOTLAND_ALL="$KEYWORDS_SCOTLAND"

if [ "$1" == "" ];
then

  debug_start "Scotland"

  SCOTLAND=$(egrep -i "$KEYWORDS_SCOTLAND" "$NEWPAGES")

  if [ "$SCOTLAND" != "" ];
  then
    printf "%s" "$SCOTLAND" > Scotland.txt
    export CATFILE="Scotland.txt"
    export CATNAME="Scotland"
    $CATEGORIZE
    rm Scotland.txt
    unset SCOTLAND
  fi

  debug_end "Scotland"

fi