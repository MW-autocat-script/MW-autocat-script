#!/bin/bash

KEYWORDS_CAD="Auto(| )CAD|\bCAD\b|computer(| )aided(| )design"
KEYWORDS_CAD_EXCLUDE="\ba cad$|Cad Bane"
KEYWORDS_CAD_ALL="$KEYWORDS_CAD"

if [ "$1" == "" ];
then
  
  debug_start "Computer aided design"

  CAD=$(egrep -i "$KEYWORDS_CAD" newpages.txt | egrep -i "$KEYWORDS_CAD_EXCLUDE")

  if [ "$CAD" != "" ];
  then
    printf "%s" "$CAD" > CAD.txt
    export CATFILE="CAD.txt"
    export CATNAME="Computer aided design"
    $CATEGORIZE
    rm CAD.txt
    unset CAD
  fi

  debug_end "Computer aided design"

fi