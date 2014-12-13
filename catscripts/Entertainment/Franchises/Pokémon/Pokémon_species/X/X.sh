#!/bin/bash

KEYWORDS_XATU="Xatu"
KEYWORDS_XERNEAS="Xerneas"

KEYWORDS_POKEMONSPECIES_X="$KEYWORDS_XATU|$KEYWORDS_XERNEAS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon X scripts"

  XATU=$(egrep -i "$KEYWORDS_XATU" "$NEWPAGES")
  XERNEAS=$(egrep -i "$KEYWORDS_XERNEAS" "$NEWPAGES")

  categorize "XATU" "Xatu"
  categorize "XERNEAS" "Xerneas"

  debug_end "Pokemon X scripts"

fi