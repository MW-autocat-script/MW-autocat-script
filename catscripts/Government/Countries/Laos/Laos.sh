#!/bin/bash

KEYWORDS_LAOS="Laos"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Laos"

  LAOS=$(egrep -i "$KEYWORDS_LAOS" "$NEWPAGES")

  if [ "$LAOS" != "" ];
  then
    printf "%s" "$LAOS" > Laos.txt
    export CATFILE="Laos.txt"
    export CATNAME="Laos"
    $CATEGORIZE
    rm Laos.txt
    unset LAOS
  fi

  debug_end "Laos"

fi