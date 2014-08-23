#!/bin/bash

KEYWORDS_POLIO="Polio"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Polio"

  POLIO=$(egrep -i "$KEYWORDS_POLIO" "$NEWPAGES")

  categorize "POLIO" "Polio"

  debug_end "Polio"

fi