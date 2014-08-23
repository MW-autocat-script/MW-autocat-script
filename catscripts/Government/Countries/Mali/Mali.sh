#!/bin/bash

KEYWORDS_MALI="\bMali(|s)\b"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Mali"

  MALI=$(egrep -i "$KEYWORDS_MALI" "$NEWPAGES")

  categorize "MALI" "Mali"

  debug_end "Mali"

fi