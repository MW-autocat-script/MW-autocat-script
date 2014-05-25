#!/bin/bash

KEYWORDS_ELSALVADOR="El(| )Salvador"
KEYWORDS_ELSALVADOR_ALL="$KEYWORDS_ELSALVADOR"

if [ "$1" == "" ];
then
  
  debug_start "El Salvador"

  ELSALVADOR=$(egrep -i "$KEYWORDS_ELSALVADOR" newpages.txt)

  if [ "$ELSALVADOR" != "" ];
  then
    printf "%s" "$ELSALVADOR" > ElSalvador.txt
    export CATFILE="ElSalvador.txt"
    export CATNAME="El Salvador"
    $CATEGORIZE
    rm ElSalvador.txt
    unset ELSALVADOR
  fi

  debug_end "El Salvador"

fi