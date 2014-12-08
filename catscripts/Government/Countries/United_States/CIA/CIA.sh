#!/bin/bash

KEYWORDS_CIA="\bC(|\.)I(|\.)A(|\.)(|s)\b|Central(| )Intelligence(| )Agency"
KEYWORDS_CIA_EXCLUDE="S.P.E.C.I.A.L"
KEYWORDS_CIA_ALL="$KEYWORDS_CIA"

if [ "$1" == "" ];
then
  
  debug_start "CIA"

  CIA=$(egrep -i "$KEYWORDS_CIA" "$NEWPAGES")

  categorize "CIA" "CIA"

  debug_end "CIA"

fi