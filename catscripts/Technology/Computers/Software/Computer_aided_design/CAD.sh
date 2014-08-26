#!/bin/bash

KEYWORDS_CAD="Auto(| )CAD|\bCAD\b|computer(| )aided(| )design"
KEYWORDS_CAD_EXCLUDE="\ba cad$|Cad Bane"
KEYWORDS_CAD_ALL="$KEYWORDS_CAD"

if [ "$1" == "" ];
then
  
  debug_start "Computer aided design"

  CAD=$(egrep -i "$KEYWORDS_CAD" "$NEWPAGES" | egrep -i "$KEYWORDS_CAD_EXCLUDE")

  categorize "CAD" "Computer aided design"

  debug_end "Computer aided design"

fi