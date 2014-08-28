#!/bin/bash

KEYWORDS_DWARFPLANET="Dwarf(| )planet"
KEYWORDS_PLUTO="\bPluto(|s)\b"
KEYWORDS_PLUTO_EXCLUDE="Pluto(| )the(| )Pup"
KEYWORDS_ERIS="\bEris"
KEYWORDS_DWARFPLANET_EXCLUDE="$KEYWORDS_PLUTO|$KEYWORDS_ERIS"

if [ "$1" == "" ];
then

  debug_start "Dwarf planets"

  DWARF=$(egrep -i "$KEYWORDS_DWARFPLANET" "$NEWPAGES" | egrep -iv "$KEYWORDS_DWARFPLANET_EXCLUDE")
  PLUTO=$(egrep -i "$KEYWORDS_PLUTO" "$NEWPAGES" | egrep -iv "$KEYWORDS_PLUTO_EXCLUDE")
  ERIS=$(egrep -i "$KEYWORDS_ERIS" "$NEWPAGES")

  categorize "DWARF" "Dwarf planets"
  categorize "PLUTO" "Pluto"
  categorize "ERIS" "Eris"

  debug_end "Dwarf planets"

fi