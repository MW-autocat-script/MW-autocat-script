#!/bin/bash

KEYWORDS_BHUTAN="Bhutan"
KEYWORDS_BHUTAN_ALL="$KEYWORDS_BHUTAN"

if [ "$1" == "" ];
then
  
  debug_start "Bhutan"

  BHUTAN=$(egrep -i "$KEYWORDS_BHUTAN" "$NEWPAGES")

  if [ "$BHUTAN" != "" ];
  then
    printf "%s" "$BHUTAN" > Bhutan.txt
    export CATFILE="Bhutan.txt"
    export CATNAME="Bhutan"
    $CATEGORIZE
    rm Bhutan.txt
    unset BHUTAN
  fi

  debug_end "Bhutan"

fi