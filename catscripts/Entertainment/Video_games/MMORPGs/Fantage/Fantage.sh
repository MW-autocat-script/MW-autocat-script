#!/bin/bash

KEYWORDS_MMORPG_FANTAGE="Fantage"

if [ "$1" == "" ];
then
  
  debug_start "Fantage"

  FANTAGE=$(egrep -i "$KEYWORDS_MMORPG_FANTAGE" "$NEWPAGES")

  categorize "FANTAGE" "Fantage"

  debug_end "Fantage"

fi