#!/bin/bash

KEYWORDS_MINNESOTA="Minnesota"

if [ "$1" == "" ];
then

  debug_start "Minnesota"

  MINNESOTA=$(egrep -i "$KEYWORDS_MINNESOTA" "$NEWPAGES")

  if [ "$MINNESOTA" != "" ];
  then
    printf "%s" "$MINNESOTA" > Minnesota.txt
    export CATFILE="Minnesota.txt"
    export CATNAME="Minnesota"
    $CATEGORIZE
    rm Minnesota.txt
    unset MINNESOTA
  fi

  debug_end "Minnesota"

fi