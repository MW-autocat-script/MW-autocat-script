#!/bin/bash

KEYWORDS_FBI="\bF(|\.)B(|\.)I(|\.)(s|)\b|Federal(| )Bureau(| )of(| )Investigation"
KEYWORDS_FBI_ALL="$KEYWORDS_FBI"

if [ "$1" == "" ];
then
  
  debug_start "FBI"

  FBI=$(egrep -i "$KEYWORDS_FBI" "$NEWPAGES")

  categorize "FBI" "FBI"

  debug_end "FBI"

fi