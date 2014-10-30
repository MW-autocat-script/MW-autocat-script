#!/bin/bash

KEYWORDS_TUATARA="Tuatara"
KEYWORDS_TUATARA_ALL="$KEYWORDS_TUATARA"

if [ "$1" == "" ];
then
  
  debug_start "Tuatara"

  TUATARA=$(egrep -i "$KEYWORDS_TUATARA" "$NEWPAGES")

  categorize "TUATARA" "Tuatara"

  debug_end "Tuatara"

fi