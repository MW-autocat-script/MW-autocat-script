#!/bin/bash

KEYWORDS_BATS="\bbat(|s)\b|(micro|macro)bat"
KEYWORDS_BATS_EXCLUDE="baseball|cricket|bat(| )mitzvah|(cork|wood|aluminum|aluminium)(| )bat|(rouge|radar)(| )the(| )bat"
KEYWORDS_BATS_ALL="$KEYWORDS_BATS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Bats"

  BATS=$(egrep -i "$KEYWORDS_BATS" "$NEWPAGES" | egrep iv "$KEYWORDS_BATS_EXCLUDE")

  categorize "BATS" "Bats"

  debug_end "Bats"

fi