#!/bin/bash

KEYWORDS_DRACULA="Dracula"

if [ "$1" == "" ];
then
  
  debug_start "Dracula"

  DRACULA=$(egrep -i "$KEYWORDS_DRACULA" "$NEWPAGES")

  if [ "$DRACULA" != "" ];
  then
    printf "%s" "$DRACULA" > Dracula.txt
    export CATFILE="Dracula.txt"
    export CATNAME="Dracula"
    $CATEGORIZE
    rm Dracula.txt
    unset DRACULA
  fi

  debug_end "Dracula"

fi