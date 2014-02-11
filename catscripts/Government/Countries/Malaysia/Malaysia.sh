#!/bin/bash

KEYWORDS_MALAYSIA="Malaysia\b"
KEYWORDS_MALAYSIA_ALL="$KEYWORDS_MALAYSIA"

if [ "$1" == "" ];
then

  debug_start "Malaysia"

  MALAYSIA="$(egrep -i "$KEYWORDS_MALAYSIA" newpages.txt)"

  if [ "$MALAYSIA" != "" ];
  then
    printf "%s" "$KEYWORDS_MALAYSIA" > Malaysia.txt
    export CATFILE="Malaysia.txt"
    export CATNAME="Malaysia"
    $CATEGORIZE
    rm Malaysia.txt
    unset MALAYSIA
  fi

  debug_end "Malaysia"

fi