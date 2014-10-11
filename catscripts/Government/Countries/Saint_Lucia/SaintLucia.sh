#!/bin/bash

KEYWORDS_SAINTLUCIA="(Saint|St(|\.))(| )Lucia"
KEYWORDS_SAINTLUCIA_ALL="$KEYWORDS_SAINTLUCIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Saint Lucia"

  SAINTLUCIA=$(egrep -i "$KEYWORDS_SAINTLUCIA" "$NEWPAGES")

  categorize "SAINTLUCIA" "Saint Lucia"

  debug_end "Saint Lucia"

fi