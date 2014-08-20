#!/bin/bash

KEYWORDS_BANGLADESH="Bangladesh"
KEYWORDS_BANGLADESH_ALL="$KEYWORDS_BANGLADESH"

if [ "$1" == "" ];
then

  debug_start "Bangladesh"

  BANGLADESH=$(egrep -i "$KEYWORDS_BANGLADESH" "$NEWPAGES")

  if [ "$BANGLADESH" != "" ];
  then
    printf "%s" "$BANGLADESH" > Bangladesh.txt
    export CATFILE="Bangladesh.txt"
    export CATNAME="Bangladesh"
    $CATEGORIZE
    rm Bangladesh.txt
    unset BANGLADESH
  fi

  debug_end "Bangladesh"

fi