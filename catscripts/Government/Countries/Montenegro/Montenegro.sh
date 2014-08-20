#!/bin/bash

KEYWORDS_MONTENEGRO="Montenegro"
KEYWORDS_MONTENEGRO_ALL="$KEYWORDS_MONTENEGRO"

if [ "$1" == "" ];
then
  
  debug_start "Montenegro"

  MONTENEGRO=$(egrep -i "$KEYWORDS_MONTENEGRO" "$NEWPAGES")

  if [ "$MONTENEGRO" != "" ];
  then
    printf "%s" "$MONTENEGRO" > Montenegro.txt
    export CATFILE="Montenegro.txt"
    export CATNAME="Montenegro"
    $CATEGORIZE
    rm Montenegro.txt
    unset MONTENEGRO
  fi

  debug_end "Montenegro"

fi