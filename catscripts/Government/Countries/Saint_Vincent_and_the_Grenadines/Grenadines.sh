#!/bin/bash

KEYWORDS_GRENADINES="Grenadine"
KEYWORDS_GRENADINES_ALL="$KEYWORDS_GRENADINES"

if [ "$1" == "" ];
then
  
  debug_start "Saint Vincent and the Grenadines"

  GRENADINE=$(egrep -i "$KEYWORDS_GRENADINES" "$NEWPAGES")

  categorize "GRENADINES" "Saint Vincent and the Grenadines"

  debug_end "Saint Vincent and the Grenadines"

fi