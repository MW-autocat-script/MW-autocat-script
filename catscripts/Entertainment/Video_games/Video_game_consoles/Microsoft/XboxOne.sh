#!/bin/bash

KEYWORDS_XBOXONE="X(|-)box(| )(1\b|One)"

if [ "$1" == "" ];
then

  debug_start "Xbox One"

  XBOXONE=$(egrep -i "$KEYWORDS_XBOXONE" "$NEWPAGES")

  if [ "$XBOXONE" != "" ];
  then
    printf "%s" "$XBOXONE" > XboxOne.txt
    export CATFILE="XboxOne.txt"
    export CATNAME="Xbox One"
    $CATEGORIZE
    rm XboxOne.txt
    unset XBOXONE
  fi

  debug_end "Xbox One"

fi