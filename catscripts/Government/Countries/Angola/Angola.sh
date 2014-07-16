#!/bin/bash

KEYWORDS_ANGOLA="Angola"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Angola"

  ANGOLA=$(egrep -i "$KEYWORDS_ANGOLA" newpages.txt)

  if [ "$ANGOLA" != "" ];
  then
    printf "%s" "$ANGOLA" > Angola.txt
    export CATFILE="Angola.txt"
    export CATNAME="Angola"
    $CATEGORIZE
    rm Angola.txt
    unset ANGOLA
  fi

  debug_end "Angola"

fi