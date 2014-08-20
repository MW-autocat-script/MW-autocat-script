#!/bin/bash

KEYWORDS_WOOZWORLD="Wooz(| )world"

if [ "$1" == "" ];
then

  debug_start "Woozworld"

  WOOZWORLD=$(egrep -i "$KEYWORDS_WOOZWORLD" "$NEWPAGES")

  if [ "$WOOZWORLD" != "" ];
  then
    printf "%s" "$WOOZWORLD" > Woozworld.txt
    export CATFILE="Woozworld.txt"
    export CATNAME="Woozworld"
    $CATEGORIZE
    rm Woozworld.txt
    unset WOOZWORLD
  fi

  debug_end "Woozworld"

fi
