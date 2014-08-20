#!/bin/bash

KEYWORDS_JAMAICA="Jamaica"
KEYWORDS_JAMAICA_ALL="$KEYWORDS_JAMAICA"

if [ "$1" == "" ];
then
  
  debug_start "Jamaica"

  JAMAICA=$(egrep -i "$KEYWORDS_JAMAICA" "$NEWPAGES")

  if [ "$JAMAICA" != "" ];
  then
    printf "%s" "$JAMAICA" > Jamaica.txt
    export CATFILE="Jamaica.txt"
    export CATNAME="Jamaica"
    $CATEGORIZE
    rm Jamaica.txt
    unset JAMAICA
  fi

  debug_end "Jamaica"

fi