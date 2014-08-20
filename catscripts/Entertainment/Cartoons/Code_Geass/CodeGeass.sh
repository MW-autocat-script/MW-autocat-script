#!/bin/bash

KEYWORDS_CODEGEASS="Geass|Knightmare(| )frame|lelouch"

if [ "$1" == "" ];
then
  
  debug_start "Code Geass"

  GEASS=$(egrep -i "$KEYWORDS_CODEGEASS" "$NEWPAGES")

  if [ "$GEASS" != "" ];
  then
    printf "%s" "$GEASS" > CodeGeass.txt
    export CATFILE="CodeGeass.txt"
    export CATNAME="Code Geass"
    $CATEGORIZE
    rm CodeGeass.txt
    unset GEASS
  fi

  debug_end "Code Geass"

fi