#!/bin/bash

KEYWORDS_SURINAME="Suriname|Paramaribo"
KEYWORDS_SURINAME_ALL="$KEYWORDS_SURINAME"

if [ "$1" == "" ];
then
  
  debug_start "Suriname"

  SURINAME=$(egrep -i "$KEYWORDS_SURINAME" "$NEWPAGES")

  categorize "SURINAME" "Suriname"

  debug_end "Suriname"

fi