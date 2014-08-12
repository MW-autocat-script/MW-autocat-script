#!/bin/bash

KEYWORDS_QATAR="Qatar"
KEYWORDS_QATAR_ALL="$KEYWORDS_QATAR"

if [ "$1" == "" ];
then
  
  debug_start "Qatar"

  QATAR=$(egrep -i "$KEYWORDS_QATAR" newpages.txt)

  if [ "$QATAR" != "" ];
  then
    printf "%s" "$QATAR" > Qatar.txt
    export CATFILE="Qatar.txt"
    export CATNAME="Qatar"
    $CATEGORIZE
    rm Qatar.txt
    unset QATAR
  fi

  debug_end "Qatar"

fi