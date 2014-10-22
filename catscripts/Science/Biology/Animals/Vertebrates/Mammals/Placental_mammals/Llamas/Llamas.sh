#!/bin/bash

KEYWORDS_LLAMAS="\bllama(|s)\b|alpaca|vicuna|guanaco"
KEYWORDS_LLAMAS_ALL="$KEYWORDS_LLAMAS" 

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Llamas"

  LLAMAS=$(egrep -i "$KEYWORDS_LLAMAS" "$NEWPAGES")

  categorize "LLAMAS" "Llamas"

  debug_end "Llamas"

fi