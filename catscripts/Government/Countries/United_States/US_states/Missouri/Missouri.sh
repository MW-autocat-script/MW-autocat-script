#!/bin/bash

KEYWORDS_MISSOURI="Missouri"

if [ "$1" == "" ];
then

  debug_start "Missouri"

  MISSOURI="$(egrep -i "$KEYWORDS_MISSOURI" newpages.txt)"

  if [ "$MISSOURI" != "" ];
  then
    printf "%s" "$MISSOURI" > Missouri.txt
    export CATFILE="Missouri.txt"
    export CATNAME="Missouri"
    $CATEGORIZE
    rm Missouri.txt
    unset MISSOURI
  fi

  debug_end "Missouri"

fi