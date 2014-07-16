#!/bin/bash

KEYWORDS_LIBERIA="Liberia"
KEYWORDS_LIBERIA_ALL="$KEYWORDS_LIBERIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Liberia"

  LIBERIA=$(egrep -i "$KEYWORDS_LIBERIA" newpages.txt)

  if [ "$LIBERIA" != "" ];
  then
    printf "%s" "$LIBERIA" > Liberia.txt
    export CATFILE="Liberia.txt"
    export CATNAME="Liberia"
    $CATEGORIZE
    rm Liberia.txt
    unset LIBERIA
  fi

  debug_end "Liberia"

fi