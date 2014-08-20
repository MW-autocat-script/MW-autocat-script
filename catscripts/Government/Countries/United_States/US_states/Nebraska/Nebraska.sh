#!/bin/bash

KEYWORDS_NEBRASKA="Nebraska"

if [ "$1" == "" ];
then

  debug_start "Nebraska"

  NEBRASKA=$(egrep -i "$KEYWORDS_NEBRASKA" "$NEWPAGES")

  if [ "$NEBRASKA" != "" ];
  then
    printf "%s" "$NEBRASKA" > Nebraska.txt
    export CATFILE="Nebraska.txt"
    export CATNAME="Nebraska"
    $CATEGORIZE
    rm Nebraska.txt
    unset NEBRASKA
  fi

  debug_end "Nebraska"

fi