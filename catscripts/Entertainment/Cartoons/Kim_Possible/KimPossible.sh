#!/bin/bash

KEYWORDS_KIMPOSSIBLE="Kim(| )Possible"

if [ "$1" == "" ];
then

  debug_start "Kim Possible"

  KIMPOSSIBLE=$(egrep -i "$KEYWORDS_KIMPOSSIBLE" "$NEWPAGES")

  if [ "$KIMPOSSIBLE" != "" ];
  then
    printf "%s" "$KIMPOSSIBLE" > KimPossible.txt
    export CATFILE="KimPossible.txt"
    export CATNAME="Kim Possible"
    $CATEGORIZE
    rm KimPossible.txt
    unset KIMPOSSIBLE
  fi

  debug_end "Kim Possible"

fi