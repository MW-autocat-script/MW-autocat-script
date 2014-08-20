#!/bin/bash

KEYWORDS_HONDURAS="Hondura(s|n)"
KEYWORDS_HONDURAS_ALL="$KEYWORDS_HONDURAS"

if [ "$1" == "" ];
then

  debug_start "Honduras"

  HONDURAS="$(egrep -i "$KEYWORDS_HONDURAS" "$NEWPAGES")"

  if [ "$HONDURAS" != "" ];
  then
    printf "%s" "$HONDURAS" > Honduras.txt
    export CATFILE="Honduras.txt"
    export CATNAME="Honduras"
    $CATEGORIZE
    rm Honduras.txt
    unset HONDURAS
  fi

  debug_end "Honduras"

fi