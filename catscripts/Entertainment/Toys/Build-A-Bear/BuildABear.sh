#!/bin/bash

KEYWORDS_BUILDABEAR="Build(|-| )a(|-| )Bear"

if [ "$1" == "" ];
then
  
  debug_start "Build-A-Bear"

  BUILDABEAR=$(egrep -i "$KEYWORDS_BUILDABEAR" "$NEWPAGES")

  if [ "$BUILDABEAR" != "" ];
  then
    printf "%s" "$BUILDABEAR" > BuildABear.txt
    export CATFILE="BuildABear.txt"
    export CATNAME="Build-A-Bear"
    $CATEGORIZE
    rm BuildABear.txt
    unset BUILDABEAR
  fi

  debug_end "Build-A-Bear"

fi