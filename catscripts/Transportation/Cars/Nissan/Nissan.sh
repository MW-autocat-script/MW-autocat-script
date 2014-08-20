#!/bin/bash

KEYWORDS_NISSANALTIMA="\bAltima"

if [ "$1" == "" ];
then

  debug_start "Nissan Altima"

  ALTIMA=$(egrep -i "$KEYWORDS_NISSANALTIMA" "$NEWPAGES")

  if [ "$ALTIMA" != "" ];
  then
    printf "%s" "$ALTIMA" > NissanAltima.txt
    export CATFILE="NissanAltima"
    export CATNAME="Nissan Altima"
    $CATEGORIZE
    rm NissanAltima.txt
    unset ALTIMA
  fi

  debug_end "Nissan Altima"

fi