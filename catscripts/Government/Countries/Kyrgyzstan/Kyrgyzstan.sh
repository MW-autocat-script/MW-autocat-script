#!/bin/bash

KEYWORDS_KYRGYZSTAN="Kyrgyzstan"
KEYWORDS_KYRGYZSTAN_ALL="$KEYWORDS_KYRGYZSTAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kyrgyzstan"

  KYRGYZSTAN=$(egrep -i "$KEYWORDS_KYRGYZSTAN" "$NEWPAGES")

  categorize "KYRGYZSTAN" "Kyrgyzstan"

  debug_end "Kyrgyzstan"

fi