#!/bin/bash

KEYWORDS_TORCHWOOD="Torchwood"
KEYWORDS_TORCHWOOD_ALL="$KEYWORDS_TORCHWOOD"

if [ "$1" == "" ];
then
  
  debug_start "Torchwood"

  TORCHWOOD=$(egrep -i "$KEYWORDS_TORCHWOOD" "$NEWPAGES")

  categorize "TORCHWOOD" "Torchwood" 

  debug_end "Torchwood"

fi