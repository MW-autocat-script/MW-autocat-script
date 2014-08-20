#!/bin/bash

KEYWORDS_SMALLVILLE="Small(| )ville"

if [ "$1" == "" ];
then
  
  debug_start "Smallville"

  SMALLVILLE=$(egrep -i "$KEYWORDS_SMALLVILLE" "$NEWPAGES")

  if [ "$SMALLVILLE" != "" ];
  then
    printf "%s" "$SMALLVILLE" > Smallville.txt
    export CATFILE="Smallville.txt"
    export CATNAME="Smallville"
    $CATEGORIZE
    rm Smallville.txt
    unset SMALLVILLE
  fi

  debug_end "Smallville"

fi
    