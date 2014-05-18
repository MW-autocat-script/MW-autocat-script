#!/bin/bash

KEYWORDS_LITHUANIA="Lithuania"

if [ "$1" == "" ];
then

  debug_start "Lithuania"

  LITHUANIA=$(egrep -i "$KEYWORDS_LITHUANIA" newpages.txt)

  if [ "$LITHUANIA" != "" ];
  then
    printf "%s" "$LITHUANIA" > Lithuania.txt
    export CATFILE="Lithuania.txt"
    export CATNAME="Lithuania"
    $CATEGORIZE
    rm Lithuania.txt
    unset LITHUANIA
  fi

  debug_end "Lithuania"

fi