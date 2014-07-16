#!/bin/bash

KEYWORDS_MOLDOVA="Moldova"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Moldova"

  MOLDOVA=$(egrep -i "$KEYWORDS_MOLDOVA" newpages.txt)

  if [ "$MOLDOVA" != "" ];
  then
    printf "%s" "$MOLDOVA" > Moldova.txt
    export CATFILE="Moldova.txt"
    export CATNAME="Moldova"
    $CATEGORIZE
    rm Moldova.txt
    unset MOLDOVA
  fi

  debug_end "Moldova"

fi