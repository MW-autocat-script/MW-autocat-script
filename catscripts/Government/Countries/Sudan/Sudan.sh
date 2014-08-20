#!/bin/bash

KEYWORDS_SUDAN="Sudan|Darfur"
KEYWORDS_SUDAN_ALL="$KEYWORDS_SUDAN"

if [ "$1" == "" ];
then
  
  debug_start "Sudan"

  SUDAN="$(egrep -i "$KEYWORDS_SUDAN" "$NEWPAGES")"

  if [ "$SUDAN" != "" ];
  then
    printf "%s" "$SUDAN" > Sudan.txt
    export CATFILE="Sudan.txt"
    export CATNAME="Sudan"
    $CATEGORIZE
    rm Sudan.txt
    unset SUDAN
  fi

  debug_end "Sudan"

fi