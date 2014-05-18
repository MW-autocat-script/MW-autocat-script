#!/bin/bash

KEYWORDS_NICARAGUA="Nicaragua"

if [ "$1" == "" ];
then

  debug_start "Nicaragua"

  NICARAGUA=$(egrep -i "$KEYWORDS_NICARAGUA" newpages.txt)

  if [ "$NICARAGUA" != "" ];
  then
    printf "%s" "$NICARAGUA" > Nicaragua.txt
    export CATFILE="Nicaragua.txt"
    export CATNAME="Nicaragua"
    $CATEGORIZE
    rm Nicaragua.txt
    unset NICARAGUA
  fi

  debug_end "Nicaragua"

fi