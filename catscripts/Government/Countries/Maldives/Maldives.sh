#!/bin/bash

KEYWORDS_MALDIVES="Maldives"
KEYWORDS_MALDIVES_ALL="$KEYWORDS_MALDIVES"

if [ "$1" == "" ];
then
  
  debug_start "Maldives"

  MALDIVES=$(egrep -i "$KEYWORDS_MALDIVES" "$NEWPAGES")

  if [ "$MALDIVES" != "" ];
  then
    printf "%s" "$MALDIVES" > Maldives.txt
    export CATFILE="Maldives.txt"
    export CATNAME="Maldives"
    $CATEGORIZE
    rm Maldives.txt
    unset MALDIVES
  fi

  debug_end "Maldives"

fi