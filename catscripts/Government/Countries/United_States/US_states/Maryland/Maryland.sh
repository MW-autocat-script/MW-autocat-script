#!/bin/bash

KEYWORDS_MARYLAND="Maryland"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Maryland"

  MARYLAND=$(egrep -i "$KEYWORDS_MARYLAND" "$NEWPAGES")

  if [ "$MARYLAND" != "" ];
  then
    printf "%s" "$MARYLAND" > Maryland.txt
    export CATFILE="Maryland.txt"
    export CATNAME="Maryland"
    $CATEGORIZE
    rm Maryland.txt
    unset MARYLAND
  fi

  debug_end "Maryland"

fi