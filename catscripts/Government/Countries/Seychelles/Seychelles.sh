#!/bin/bash

KEYWORDS_SEYCHELLES="Seychelles"
KEYWORDS_SEYCHELLES_ALL="$KEYWORDS_SEYCHELLES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Seychelles"

  SEYCHELLES=$(egrep -i "$KEYWORDS_SEYCHELLES" "$NEWPAGES")

  categorize "SEYCHELLES" "Seychelles"

  debug_end "Seychelles"

fi