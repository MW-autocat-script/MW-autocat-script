#!/bin/bash

KEYWORDS_HUNGARY="Hungary"
KEYWORDS_HUNGARY_EXCLUDE="Austria( |-)Hungary"
KEYWORDS_HUNGARY_ALL="$KEYWORDS_HUNGARY"

if [ "$1" == "" ];
then
  
  debug_start "Hungary"

  HUNGARY=$(egrep -i "$KEYWORDS_HUNGARY" "$NEWPAGES" | egrep -iv "$KEYWORDS_HUNGARY_EXCLUDE")

  if [ "$HUNGARY" != "" ];
  then
    printf "%s" "$HUNGARY" > Hungary.txt
    export CATFILE="Hungary.txt"
    export CATNAME="Hungary"
    $CATEGORIZE
    rm Hungary.txt
    unset HUNGARY
  fi

  debug_end "Hungary"

fi