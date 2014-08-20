#!/bin/bash

KEYWORDS_LESOTHO="Lesotho"
KEYWORDS_LESOTHO_ALL="$KEYWORDS_LESOTHO"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Lesotho"

  LESOTHO=$(egrep -i "$KEYWORDS_LESOTHO" "$NEWPAGES")

  if [ "$LESOTHO" != "" ];
  then
    printf "%s" "$LESOTHO" > Lesotho.txt
    export CATFILE="Lesotho.txt"
    export CATNAME="Lesotho"
    $CATEGORIZE
    rm Lesotho.txt
    unset LESOTHO
  fi

  debug_end "Lesotho"

fi