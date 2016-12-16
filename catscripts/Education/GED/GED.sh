#!/bin/bash

readonly KEYWORDS_GED="\bGED(|s)\b|General(| )Educational(| )Development"
readonly KEYWORDS_GED_ALL="$KEYWORDS_GED"

if [ "$1" == "" ];
then
  
  debug_start "General Educational Development tests (GEDs)"

  GED=$(egrep -i "$KEYWORDS_GED" "$NEWPAGES")

  categorize "GED" "General Educational Development tests (GEDs)"

  debug_end "General Educational Development tests (GEDs)"

fi