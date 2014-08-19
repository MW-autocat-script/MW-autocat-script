#!/bin/bash

KEYWORDS_IOWA="\bIowa"
KEYWORDS_IOWA_ALL="$KEYWORDS_IOWA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Iowa"

  IOWA=$(egrep -i "$KEYWORDS_IOWA" newpages.txt)

  if [ "$IOWA" != "" ];
  then
    printf "%s" "$IOWA" > Iowa.txt
    export CATFILE="Iowa.txt"
    export CATNAME="Iowa"
    $CATEGORIZE
    rm Iowa.txt
    unset IOWA
  fi

  debug_end "Iowa"

fi