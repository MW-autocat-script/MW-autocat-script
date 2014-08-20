#!/bin/bash

KEYWORDS_BAHRAIN="Bahrain"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bahrain"

  BAHRAIN=$(egrep -i "$KEYWORDS_BAHRAIN" "$NEWPAGES")

  if [ "$BAHRAIN" != "" ];
  then
    printf "%s" "$BAHRAIN" > Bahrain.txt
    export CATFILE="Bahrain.txt"
    export CATNAME="Bahrain"
    $CATEGORIZE
    rm Bahrain.txt
    unset BAHRAIN
  fi

  debug_end "Bahrain"

fi