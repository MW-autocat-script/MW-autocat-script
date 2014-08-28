#!/bin/bash

KEYWORDS_FLU="\bFlu\b|influenza"
KEYWORDS_SWINEFLU="H1N1|swine(| )flu"
KEYWORDS_FLU_EXCLUDE="$KEYWORDS_SWINEFLU"

if [ "$1" == "" ];
then

  debug_start "Flu"

  FLU=$(egrep -i "$KEYWORDS_FLU" "$NEWPAGES" | egrep -iv "$KEYWORDS_FLU_EXCLUDE")
  SWINE=$(egrep -i "$KEYWORDS_SWINEFLU" "$NEWPAGES")

  categorize "FLU" "Flu"
  categorize "SWINE" "Swine flu"

  debug_end "Flu"

fi