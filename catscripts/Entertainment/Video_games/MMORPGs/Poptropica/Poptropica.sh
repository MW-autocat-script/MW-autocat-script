#!/bin/bash

export KEYWORDS_MMORPG_POPTROPICA="poptropica|potropica|poptopica"

if [ "$1" == "" ];
then

  debug_start "Poptropica"

  POPTROPICA=$(egrep -i "$KEYWORDS_MMORPG_POPTROPICA" "$NEWPAGES")

  if [ "$POPTROPICA" != "" ];
  then
    printf "%s" "$POPTROPICA" > Poptropica.txt
    export CATFILE="Poptropica.txt"
    export CATNAME="Poptropica"
    $CATEGORIZE
    rm Poptropica.txt
    unset POPTROPICA
  fi

  debug_end "Poptropica"

fi