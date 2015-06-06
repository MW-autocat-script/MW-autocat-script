#!/bin/bash

KEYWORDS_EQUATORIALGUINEA="Equatorial(| )Guinea"
KEYWORDS_EQUATORIALGUINEA_ALL="$KEYWORDS_EQUATORIALGUINEA"

if [ "$1" == "" ];
then
  
  debug_start "Equatorial Guinea"

  EQUATORIALGUINEA=$(egrep -i "$KEYWORDS_EQUATORIALGUINEA" "$NEWPAGES")

  categorize "EQUATORIALGUINEA" "Equatorial Guinea"

  debug_end "Equatorial Guinea"

fi