#!/bin/bash

KEYWORDS_CADILLAC="Cadillac"
KEYWORDS_CADILLAC_ALL="$KEYWORDS_CADILLAC"

if [ "$1" == "" ];
then
  
  debug_start "Cadillac"

  CADILLAC=$(egrep -i "$KEYWORDS_CADILLAC" "$NEWPAGES")

  categorize "CADILLAC" "Cadillac"

  debug_end "Cadillac"

fi