#!/bin/bash

KEYWORDS_ANDORRA="Andorra"
KEYWORDS_ANDORRA_ALL="$KEYWORDS_ANDORRA"

if [ "$1" == "" ];
then
  
  debug_start "Andorra"

  ANDORRA=$(egrep -i "$KEYWORDS_ANDORRA" "$NEWPAGES")

  if [ "$ANDORRA" != "" ];
  then
    printf "%s" "$ANDORRA" > Andorra.txt
    export CATFILE="Andorra.txt"
    export CATNAME="Andorra"
    $CATEGORIZE
    rm Andorra.txt
    unset ANDORRA
  fi

  debug_end "Andorra"

fi