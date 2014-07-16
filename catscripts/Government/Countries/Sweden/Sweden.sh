#!/bin/bash

KEYWORDS_SWEDEN="Sweden"

if [ "$1" == "" ];
then
  
  debug_start "Sweden"

  SWEDEN=$(egrep -i "$KEYWORDS_SWEDEN" newpages.txt)

  if [ "$SWEDEN" != "" ];
  then
    printf "%s" "$SWEDEN" > Sweden.txt
    export CATFILE="Sweden.txt"
    export CATNAME="Sweden"
    $CATEGORIZE
    rm Sweden.txt
    unset SWEDEN
  fi

  debug_end "Sweden"

fi