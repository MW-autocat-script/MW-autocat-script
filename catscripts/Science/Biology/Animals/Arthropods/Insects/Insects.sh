#!/bin/bash

KEYWORDS_INSECTS="Insect"
KEYWORDS_ANTS="\bAnt(|s)\b"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Insects"

  ANTS=$(egrep -i "$KEYWORDS_ANTS" "$NEWPAGES")

  if [ "$ANTS" != "" ];
  then
    printf "%s" "$ANTS" > Ants.txt
    export CATFILE="Ants.txt"
    export CATNAME="Ants"
    $CATEGORIZE
    rm Ants.txt
    unset ANTS
  fi

  debug_end "Ants"

fi