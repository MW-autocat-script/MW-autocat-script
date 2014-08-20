#!/bin/bash

KEYWORDS_BENIN="Benin"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Benin"

  BENIN=$(egrep -i "$KEYWORDS_BENIN" "$NEWPAGES")

  if [ "$BENIN" != "" ];
  then
    printf "%s" "$BENIN" > Benin.txt
    export CATFILE="Benin.txt"
    export CATNAME="Benin"
    $CATEGORIZE
    rm Benin.txt
    unset BENIN
  fi

  debug_end "Benin"

fi