#!/bin/bash

KEYWORDS_MALI="Mali\b"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Mali"

  MALI=$(egrep -i "$KEYWORDS_MALI" newpages.txt)

  if [ "$MALI" != "" ];
  then
    printf "%s" "$MALI" > Mali.txt
    export CATFILE="Mali.txt"
    export CATNAME="Mali"
    $CATEGORIZE
    rm Mali.txt
    unset MALI
  fi

  debug_end "Mali"

fi