#!/bin/bash

KEYWORDS_PAKISTAN="Pakistan"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pakistan"

  PAKISTAN=$(egrep -i "$KEYWORDS_PAKISTAN" newpages.txt)

  if [ "$PAKISTAN" != "" ];
  then
    printf "%s" "$PAKISTAN" > Pakistan.txt
    export CATFILE="Pakistan.txt"
    export CATNAME="Pakistan"
    $CATEGORIZE
    rm Pakistan.txt
    unset PAKISTAN
  fi

  debug_end "Pakistan"

fi