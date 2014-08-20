#!/bin/bash

KEYWORDS_MACOS="Mac(| )OS|OS(| )X"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Mac OS X"

  MACOS=$(egrep -i "$KEYWORDS_MACOS" "$NEWPAGES")

  if [ "$MACOS" != "" ];
  then
    printf "%s" "$MACOS" > MacOSX.txt
    export CATFILE="MacOSX.txt"
    export CATNAME="Mac OS X"
    $CATEGORIZE
    rm MacOSX.txt
    unset MACOS
  fi

  debug_end "Mac OS X"

fi