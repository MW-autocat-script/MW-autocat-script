#!/bin/bash

KEYWORDS_LONG="^(.){150,}$"

if [ "$1" == "" ];
then
  
  debug_start "Long page titles"

  LONG="$(egrep -i "$KEYWORDS_LONG" "$NEWPAGES")"

  if [ "$LONG" != "" ];
  then
    printf "%s" "$LONG" > Long.txt
    export CATFILE="Long.txt"
    export CATNAME="Long page titles"
    $CATEGORIZE
    rm Long.txt
    unset LONG
  fi

  debug_end "Long page titles"

fi