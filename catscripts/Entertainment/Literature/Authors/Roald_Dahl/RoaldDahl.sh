#!/bin/bash

KEYWORDS_ROALDDAHL="\bDahl(|s)\b|Roald(| )Dahl"

if [ "$1" == "" ];
then
  
  debug_start "Roald Dahl"

  DAHL=$(egrep -i "$KEYWORDS_ROALDDAHL" newpages.txt)

  if [ "$DAHL" != "" ];
  then
    printf "%s" "$DAHL" > Dahl.txt
    export CATFILE="Dahl.txt"
    export CATNAME="Roald Dahl"
    $CATEGORIZE
    rm Dahl.txt
    unset DAHL
  fi

  debug_end "Roald Dahl"

fi