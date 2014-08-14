#!/bin/bash

KEYWORDS_ARKANSAS="Arkansas|,(| )AR( |$)"
KEYWORDS_ARKANSAS_ALL="$KEYWORDS_ARKANSAS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Arkansas"

  ARKANSAS=$(egrep -i "$KEYWORDS_ARKANSAS" newpages.txt)

  if [ "$ARKANSAS" != "" ];
  then
    printf "%s" "$ARKANSAS" > Arkansas.txt
    export CATFILE="Arkansas.txt"
    export CATNAME="Arkansas"
    $CATEGORIZE
    rm Arkansas.txt
    unset ARKANSAS
  fi

  debug_end "Arkansas"

fi