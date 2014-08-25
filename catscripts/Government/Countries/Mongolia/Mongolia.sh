#!/bin/bash

KEYWORDS_MONGOLIA="Mongolia"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Mongolia"
  
  MONGOLIA=$(egrep -i "$KEYWORDS_MONGOLIA" "$NEWPAGES")

  categorize "MONGOLIA" "Mongolia"

  debug_end "Mongolia"

fi