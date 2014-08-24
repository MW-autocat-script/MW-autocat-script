#!/bin/bash

KEYWORDS_KIRBY="Kirby"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kirby series"

  KIRBY=$(egrep -i "$KEYWORDS_KIRBY" "$NEWPAGES")

  categorize "KIRBY" "Kirby series"

  debug_end "Kirby series"

fi