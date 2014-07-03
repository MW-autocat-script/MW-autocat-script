#!/bin/bash

KEYWORDS_MYCHEMICALROMANCE="My(| )Chemical(| )Romance|\bMCR\b"

if [ "$1" == "" ];
then

  debug_start "My Chemical Romance"

  MCR=$(egrep -i "$KEYWORDS_MYCHEMICALROMANCE" newpages.txt)

  if [ "$MCR" != "" ];
  then
    printf "%s" "$MCR" > MCR.txt
    export CATFILE="MCR.txt"
    export CATNAME="My Chemical Romance"
    $CATEGORIZE
    rm MCR.txt
    unset MCR
  fi

  debug_end "My Chemical Romance"

fi