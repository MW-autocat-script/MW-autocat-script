#!/bin/bash

KEYWORDS_PALAU="Palau"
KEYWORDS_PALAU_ALL="$KEYWORDS_PALAU"

if [ "$1" == "" ];
then
  
  debug_start "Palau"

  PALAU=$(egrep -i "$KEYWORDS_PALAU" "$NEWPAGES")

  categorize "PALAU" "Palau"

  debug_end "Palau"

fi