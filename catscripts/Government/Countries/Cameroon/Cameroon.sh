#!/bin/bash

KEYWORDS_CAMEROON="Cameroon"
KEYWORDS_CAMEROON_ALL="$KEYWORDS_CAMEROON"

if [ "$1" == "" ];
then

  debug_start "Cameroon"

  CAMEROON="$(egrep -i "$KEYWORDS_CAMEROON" "$NEWPAGES")"

  if [ "$CAMEROON" != "" ];
  then
    printf "%s" "$CAMEROON" > Cameroon.txt
    export CATFILE="Cameroon.txt"
    export CATNAME="Cameroon"
    $CATEGORIZE
    rm Cameroon.txt
    unset CAMEROON
  fi

  debug_end "Cameroon"

fi