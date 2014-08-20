#!/bin/bash

KEYWORDS_BELIZE="Belize"
KEYWORDS_BELIZE_ALL="$KEYWORDS_BELIZE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Belize"

  BELIZE="$(egrep -i "$KEYWORDS_BELIZE" "$NEWPAGES")"

  if [ "$BELIZE" != "" ];
  then
    printf "%s" "$BELIZE" > Belize.txt
    export CATFILE="Belize.txt"
    export CATNAME="Belize"
    $CATEGORIZE
    rm Belize.txt
    unset BELIZE
  fi

  debug_end "Belize"

fi