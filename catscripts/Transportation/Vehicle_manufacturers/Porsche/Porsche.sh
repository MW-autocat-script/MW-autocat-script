#!/bin/bash

KEYWORDS_PORSCHE="Porsche"

if [ "$1" == "" ];
then

  debug_start "Porsche"

  PORSCHE=$(egrep -i "$KEYWORDS_PORSCHE" "$NEWPAGES")

  if [ "$PORSCHE" != "" ];
  then
    printf "%s" "$PORSCHE" > Porsche.txt
    export CATFILE="Porsche.txt"
    export CATNAME="Porsche"
    $CATEGORIZE
    rm Porsche.txt
    unset PORSCHE
  fi

  debug_end "Porsche"

fi