#!/bin/bash

KEYWORDS_COSTARICA="Costa(| )Rica"
KEYWORDS_COSTARICA_ALL="$KEYWORDS_COSTARICA"

if [ "$1" == "" ];
then
  
  debug_start "Costa Rica"

  COSTARICA=$(egrep -i "$KEYWORDS_COSTARICA" newpages.txt)

  if [ "$COSTARICA" != "" ];
  then
    printf "%s" "$COSTARICA" > CostaRica.txt
    export CATFILE="CostaRica.txt"
    export CATNAME="Costa Rica"
    $CATEGORIZE
    rm CostaRica.txt
    unset COSTARICA
  fi

  debug_end "Costa Rica"

fi