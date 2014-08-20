#!/bin/bash

KEYWORDS_DELAWARE="Delaware|,(| )DE( |$)"
KEYWORDS_DELAWARE_ALL="$KEYWORDS_DELAWARE"

if [ "$1" == "" ];
then

  debug_start "Delaware"

  DELAWARE=$(egrep -i "$KEYWORDS_DELAWARE" "$NEWPAGES")

  if [ "$DELAWARE" != "" ];
  then
    printf "%s" "$DELAWARE" > Delaware.txt
    export CATFILE="Delaware.txt"
    export CATNAME="Delaware"
    $CATEGORIZE
    rm Delaware.txt
    unset DELAWARE
  fi

  debug_end "Delaware"

fi