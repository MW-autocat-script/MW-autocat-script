#!/bin/bash

KEYWORDS_CHARLESDICKENS="Charles(| )Dickens"

if [ "$1" == "" ];
then
  
  debug_start "Charles Dickens"

  DICKENS=$(egrep -i "$KEYWORDS_CHARLESDICKENS" "$NEWPAGES")

  if [ "$DICKENS" != "" ];
  then
    printf "%s" "$DICKENS" > Dickens.txt
    export CATFILE="Dickens.txt"
    export CATNAME="Charles Dickens"
    $CATEGORIZE
    rm Dickens.txt
    unset DICKENS
  fi

  debug_end "Charles Dickens"

fi