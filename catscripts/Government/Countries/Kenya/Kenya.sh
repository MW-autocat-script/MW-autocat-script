#!/bin/bash

KEYWORDS_KENYA="Kenya"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kenya"

  KENYA=$(egrep -i "$KEYWORDS_KENYA" newpages.txt)

  if [ "$KENYA" != "" ];
  then
    printf "%s" "$KENYA" > Kenya.txt
    export CATFILE="Kenya.txt"
    export CATNAME="Kenya"
    $CATEGORIZE
    rm Kenya.txt
    unset KENYA
  fi

  debug_end "Kenya"

fi