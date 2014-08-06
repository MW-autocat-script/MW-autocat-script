#!/bin/bash

KEYWORDS_MOZAMBIQUE="Mozambique"
KEYWORDS_MOZAMBIQUE_ALL="$KEYWORDS_MOZAMBIQUE"

if [ "$1" == "" ];
then

  debug_start "Mozambique"

  MOZAMBIQUE=$(egrep -i "$KEYWORDS_MOZAMBIQUE" newpages.txt)

  if [ "$MOZAMBIQUE" != "" ];
  then
    printf "%s" "$MOZAMBIQUE" > Mozambique.txt
    export CATFILE="Mozambique.txt"
    export CATNAME="Mozambique"
    $CATEGORIZE
    rm Mozambique.txt
    unset MOZAMBIQUE
  fi

  debug_end "Mozambique"

fi