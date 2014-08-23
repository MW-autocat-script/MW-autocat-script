#!/bin/bash

KEYWORDS_NEPAL="Nepal"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Nepal"

  NEPAL=$(egrep -i "$KEYWORDS_NEPAL" "$NEWPAGES")

  categorize "NEPAL" "Nepal"

  debug_end "Nepal"

fi