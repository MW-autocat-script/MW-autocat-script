#!/bin/bash

KEYWORDS_ATARI2600="Atari(| )2600"
KEYWORDS_ATARI2600_EXCLUDE="(on|for)(| )the(| )Atari(| )2600$"
KEYWORDS_ATARI2600_ALL="$KEYWORDS_ATARI2600"

if [ "$1" == "" ];
then
  
  debug_start "Atari 2600"

  ATARI2600=$(egrep -i "$KEYWORDS_ATARI2600" "$NEWPAGES" | egrep -iv "$KEYWORDS_ATARI2600_EXCLUDE")

  categorize "ATARI2600" "Atari 2600"

  debug_end "Atari 2600"

fi