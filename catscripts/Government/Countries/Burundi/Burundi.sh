#!/bin/bash

KEYWORDS_BURUNDI="Burundi"
KEYWORDS_BURUNDI_ALL="$KEYWORDS_BURUNDI"

if [ "$1" == "" ];
then
  
  debug_start "Burundi"

  BURUNDI=$(egrep -i "$KEYWORDS_BURUNDI" "$NEWPAGES")

  if [ "$BURUNDI" != "" ];
  then
    printf "%s" "$BURUNDI" > Burundi.txt
    export CATFILE="Burundi.txt"
    export CATNAME="Burundi"
    $CATEGORIZE
    rm Burundi.txt
    unset BURUNDI
  fi

  debug_end "Burundi"

fi