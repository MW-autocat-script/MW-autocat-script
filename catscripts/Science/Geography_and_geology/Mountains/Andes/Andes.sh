#!/bin/bash

KEYWORDS_ANDES="\bAndes"

if [ "$1" == "" ];
then
  
  debug_start "Andes"

  ANDES=$(egrep -i "$KEYWORDS_ANDES" "$NEWPAGES")

  if [ "$ANDES" != "" ];
  then
    printf "%s" "$ANDES" > Andes.txt
    export CATFILE="Andes.txt"
    export CATNAME="Andes"
    $CATEGORIZE
    rm Andes.txt
    unset ANDES
  fi

  debug_end "Andes"

fi