#!/bin/bash

KEYWORDS_AMERICANREVOLUTION="American(| )Revolution|Betsy(| )Ross"
KEYWORDS_AMERICANREVOLUTION_ALL="$KEYWORDS_AMERICANREVOLUTION"

if [ "$1" == "" ];
then
  
  debug_start "American Revolution"

  AREVOLUTION=$(egrep -i "$KEYWORDS_AMERICANREVOLUTION" "$NEWPAGES")

  categorize "AREVOLUTION" "American Revolution"

  debug_end "American Revolution"

fi