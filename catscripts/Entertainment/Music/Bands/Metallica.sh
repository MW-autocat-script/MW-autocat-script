#!/bin/bash

KEYWORDS_METALLICA="Metallica"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Metallica"

  METALLICA=$(egrep -i "$KEYWORDS_METALLICA" newpages.txt)

  if [ "$METALLICA" != "" ];
  then
    printf "%s" "$METALLICA" > Metallica.txt
    export CATFILE="Metallica.txt"
    export CATNAME="Metallica"
    $CATEGORIZE
    rm Metallica.txt
    unset METALLICA
  fi

  debug_end "Metallica"

fi