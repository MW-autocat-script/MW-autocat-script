#!/bin/bash

KEYWORDS_KAZAKHSTAN="Kazakhstan"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kazakhstan"

  KAZAKHSTAN=$(egrep -i "$KEYWORDS_KAZAKHSTAN" newpages.txt)

  if [ "$KAZAKHSTAN" != "" ];
  then
    printf "%s" "$KAZAKHSTAN" > Kazakhstan.txt
    export CATFILE="Kazakhstan.txt"
    export CATNAME="Kazakhstan"
    $CATEGORIZE
    rm Kazakhstan.txt
    unset KAZAKHSTAN
  fi

  debug_end "Kazakhstan"

fi