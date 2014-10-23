#!/bin/bash

KEYWORDS_GENETICS="\bRNA|\bDNA|\bgenes\b|(which|what)(| )gene(|s)\b|genetic|chromosom(e|al)"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Genetics"

  GENETICS=$(egrep -i "$KEYWORDS_GENETICS" "$NEWPAGES")

  categorize "GENETICS" "Genetics"

  debug_end "Genetics"

fi