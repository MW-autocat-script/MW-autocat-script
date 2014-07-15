#!/bin/bash

KEYWORDS_GCSE="GCSE|General Certificate of Secondary Education"
KEYWORDS_GCSE_ALL="$KEYWORDS_GCSE"

if [ "$1" == "" ];
then
  
  debug_start "GCSE"

  GCSE=$(egrep -i "$KEYWORDS_GCSE" newpages.txt)

  if [ "$GCSE" != "" ];
  then
    printf "%s" "$GCSE" > GCSE.txt
    export CATFILE="GCSE.txt"
    export CATNAME="GCSE"
    $CATEGORIZE
    rm GCSE.txt
    unset GCSE
  fi

  debug_end "GCSE"

fi