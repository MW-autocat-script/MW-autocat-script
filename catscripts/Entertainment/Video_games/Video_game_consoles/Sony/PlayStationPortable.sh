#!/bin/bash

KEYWORDS_PSP="\bPSP|Play(| )Station(| )Portable|\bPS(| )Portable"
KEYWORDS_PSP_ALL="$KEYWORDS_PSP"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "PlayStation Portable"

  PSP=$(egrep -i "$KEYWORDS_PSP" "$NEWPAGES")

  categorize "PSP" "PlayStation Portable"

  debug_end "PlayStation Portable"

fi