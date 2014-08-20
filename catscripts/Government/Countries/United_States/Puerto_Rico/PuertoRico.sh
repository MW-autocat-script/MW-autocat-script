#!/bin/bash

KEYWORDS_PUERTORICO="Puerto(| )Rico|Puerto(| )Rican"

if [ "$1" == "" ];
then
  
  debug_start "Puerto Rico"

  PUERTORICO=$(egrep -i "$KEYWORDS_PUERTORICO" "$NEWPAGES")

  if [ "$PUERTORICO" != "" ];
  then
    printf "%s" "$PUERTORICO" > PuertoRico.txt
    export CATFILE="PuertoRico.txt"
    export CATNAME="Puerto Rico"
    $CATEGORIZE
    rm PuertoRico.txt
    unset PUERTORICO
  fi

  debug_end "Puerto Rico"

fi