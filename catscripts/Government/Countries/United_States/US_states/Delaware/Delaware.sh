#!/bin/bash

KEYWORDS_DELAWARE="Delaware"

if [ "$1" == "" ];
then

  debug_start "Delaware"

  DELAWARE=$(egrep -i "$KEYWORDS_DELAWARE" newpages.txt)

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