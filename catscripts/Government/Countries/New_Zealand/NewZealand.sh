#!/bin/bash

KEYWORDS_NEWZEALAND="New(| )Zealand|\bNZ\b"
KEYWORDS_NEWZEALAND_ALL="$KEYWORDS_NEWZEALAND"

if [ "$1" == "" ];
then

  debug_start "New Zealand"

  NEWZEALAND=$(egrep -i "$KEYWORDS_NEWZEALAND" "$NEWPAGES")

  if [ "$NEWZEALAND" != "" ];
  then
    printf "%s" "$NEWZEALAND" > NewZealand.txt
    export CATFILE="NewZealand.txt"
    export CATNAME="New Zealand"
    $CATEGORIZE
    rm NewZealand.txt
    unset NEWZEALAND
  fi

  debug_end "New Zealand"

fi
