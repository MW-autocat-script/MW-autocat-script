#!/bin/bash

KEYWORDS_DOMINICA="Dominica\b"
KEYWORDS_DOMINICA_ALL="$KEYWORDS_DOMINICA"

if [ "$1" == "" ];
then

  debug_start "Dominica"

  DOMINICA=$(egrep -i "$KEYWORDS_DOMINICA" newpages.txt)

  if [ "$DOMINICA" != "" ];
  then
    printf "%s" "$DOMINICA" > Dominica.txt
    export CATFILE="Dominica.txt"
    export CATNAME="Dominica"
    $CATEGORIZE
    rm Dominica.txt
    unset DOMINICA
  fi

  debug_end "Dominica"

fi