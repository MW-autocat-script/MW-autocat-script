#!/bin/bash

KEYWORDS_SLOVAKIA="Slovakia(|s)\b"
KEYWORDS_SLOVAKIA_ALL="$KEYWORDS_SLOVAKIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Slovakia"

  SLOVAKIA=$(egrep -i "$KEYWORDS_SLOVAKIA" newpages.txt)

  if [ "$SLOVAKIA" != "" ];
  then
    printf "%s" "$SLOVAKIA" > Slovakia.txt
    export CATFILE="Slovakia.txt"
    export CATNAME="Slovakia"
    $CATEGORIZE
    rm Slovakia.txt
    unset SLOVAKIA
  fi

  debug_end "Slovakia"

fi