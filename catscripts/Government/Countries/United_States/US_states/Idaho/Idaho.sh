#!/bin/bash

KEYWORDS_IDAHO="idaho|\bin ID\b|, ID\b"
KEYWORDS_IDAHO_ALL="$KEYWORDS_IDAHO"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Idaho"

  IDAHO=$(egrep -i "$KEYWORDS_IDAHO" newpages.txt)

  if [ "$IDAHO" != "" ];
  then
    printf "%s" "$IDAHO" > Idaho.txt
    export CATFILE="Idaho.txt"
    export CATNAME="Idaho"
    $CATEGORIZE
    rm Idaho.txt
    unset IDAHO
  fi

  debug_end "Idaho"

fi