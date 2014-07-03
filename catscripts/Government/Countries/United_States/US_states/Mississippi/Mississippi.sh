#!/bin/bash

KEYWORDS_MISSISSIPPI="Mississippi"

if [ "$1" == "" ];
then

  debug_start "Mississippi"

  MISSISSIPPI=$(egrep -i "$KEYWORDS_MISSISSIPPI" newpages.txt)

  if [ "$MISSISSIPPI" != "" ];
  then
    printf "%s" "$MISSISSIPPI" > Mississippi.txt
    export CATFILE="Mississippi.txt"
    export CATNAME="Mississippi"
    $CATEGORIZE
    rm Mississippi.txt
    unset MISSISSIPPI
  fi

  debug_end "Mississippi"

fi