#!/bin/bash

KEYWORDS_BARBADOS="Barbados|Barbadoan"

if [ "$1" == "" ];
then

  debug_start "Barbados"

  BARBADOS=$(egrep -i "$KEYWORDS_BARBADOS" newpages.txt)

  if [ "$BARBADOS" != "" ];
  then
    printf "%s" "$BARBADOS" > Barbados.txt
    export CATFILE="Barbados.txt"
    export CATNAME="Barbados"
    $CATEGORIZE
    rm Barbados.txt
    unset BARBADOS
  fi

  debug_end "Barbados"

fi