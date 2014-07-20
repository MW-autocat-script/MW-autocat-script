#!/bin/bash

KEYWORDS_WICCA="Wicca"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wicca"

  WICCA=$(egrep -i "$KEYWORDS_WICCA" newpages.txt)

  if [ "$WICCA" != "" ];
  then
    printf "%s" "$WICCA" > Wicca.txt
    export CATFILE="Wicca.txt"
    export CATNAME="Wicca"
    $CATEGORIZE
    rm Wicca.txt
    unset WICCA
  fi

  debug_end "Wicca"

fi