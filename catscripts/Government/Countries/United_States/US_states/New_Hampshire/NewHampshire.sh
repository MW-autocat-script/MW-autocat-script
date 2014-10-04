#!/bin/bash

KEYWORDS_NEWHAMPSHIRE="New(| )Hampshire|,(| )N(|\.)H(|\.)$"
KEYWORDS_NEWHAMPSHIRE_ALL="$KEYWORDS_NEWHAMPSHIRE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "New Hampshire"

  NEWHAMPSHIRE=$(egrep -i "$KEYWORDS_NEWHAMPSHIRE" "$NEWPAGES")
  
  categorize "NEWHAMPSHIRE" "New Hampshire"

  debug_end "New Hampshire"

fi