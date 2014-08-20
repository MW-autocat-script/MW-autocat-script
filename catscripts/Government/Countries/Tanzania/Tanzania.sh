#!/bin/bash

KEYWORDS_TANZANIA="Tanzia|Tanzania"
KEYWORDS_TANZANIA_ALL="$KEYWORDS_TANZANIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tanzania"

  TANZANIA=$(egrep -i "$KEYWORDS_TANZANIA" "$NEWPAGES")

  if [ "$TANZANIA" != "" ];
  then
    printf "%s" "$TANZANIA" > Tanzia.txt
    export CATFILE="Tanzania.txt"
    export CATNAME="Tanzania"
    $CATEGORIZE
    rm Tanzania.txt
    unset TANZANIA
  fi

  debug_end "Tanzania"

fi