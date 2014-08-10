#!/bin/bash

KEYWORDS_LIECHTENSTEIN="Liechtenstein"
KEYWORDS_LIECHTENSTEIN_ALL="$KEYWORDS_LIECHTENSTEIN"

if [ "$1" == "" ];
then

  debug_start "Liechtenstein"

  LIECHTENSTEIN=$(egrep -i "$KEYWORDS_LIECHTENSTEIN" newpages.txt)

  if [ "$LIECHTENSTEIN" != "" ];
  then
    printf "%s" "$LIECHTENSTEIN" > Liechtenstein.txt
    export CATFILE="Liechtenstein.txt"
    export CATNAME="Liechtenstein"
    $CATEGORIZE
    rm Liechtenstein.txt
    unset LIECHTENSTEIN
  fi

  debug_end "Liechtenstein"

fi