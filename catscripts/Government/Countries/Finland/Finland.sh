#!/bin/bash

KEYWORDS_FINLAND="Finland|Helsinki"
KEYWORDS_FINLAND_ALL="$KEYWORDS_FINLAND"

if [ "$1" == "" ];
then
  
  debug_start "Finland"

  FINLAND=$(egrep -i "$KEYWORDS_FINLAND" "$NEWPAGES")

  if [ "$FINLAND" != "" ];
  then
    printf "%s" "$FINLAND" > Finland.txt
    export CATFILE="Finland.txt"
    export CATNAME="Finland"
    $CATEGORIZE
    rm Finland.txt
    unset FINLAND
  fi

  debug_end "Finland"

fi