#!/bin/bash

KEYWORDS_KOSOVO="Kosovo"
KEYWORDS_KOSOVO_ALL="$KEYWORDS_KOSOVO"

if [ "$1" == "" ];
then

  debug_start "Kosovo"

  KOSOVO=$(egrep -i "$KEYWORDS_KOSOVO" "$NEWPAGES")

  if [ "$KOSOVO" != "" ];
  then
    printf "%s" "$KOSOVO" > Kosovo.txt
    export CATFILE="Kosovo.txt"
    export CATNAME="Kosovo"
    $CATEGORIZE
    rm Kosovo.txt
    unset KOSOVO
  fi

  debug_end "Kosovo"

fi