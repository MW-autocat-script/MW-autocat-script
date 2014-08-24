#!/bin/bash

KEYWORDS_OMAN="\bOman(|s)\b"
KEYWORDS_OMAN_ALL="$KEYWORDS_OMAN"

if [ "$1" == "" ];
then
  
  debug_start "Oman"

  OMAN=$(egrep -i "$KEYWORDS_OMAN" "$NEWPAGES")

  categorize "OMAN" "Oman"

  debug_end "Oman"

fi