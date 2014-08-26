#!/bin/bash

KEYWORDS_LUGE="\bLuge(|s)\b"
KEYWORDS_BOBLSED="Bob(| )sle(d|igh)"

if [ "$1" == "" ];
then
  
  debug_start "Luge and bobsledding"

  LUGEANDBOBSLED=$(egrep -i "$KEYWORDS_BOBLSED|$KEYWORDS_LUGE" "$NEWPAGES")

  categorize "LUGEANDBOBSLED" "Luge and bobsledding"

  debug_end "Luge and bobsledding"

fi