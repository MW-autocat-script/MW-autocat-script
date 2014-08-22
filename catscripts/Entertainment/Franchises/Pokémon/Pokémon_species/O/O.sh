#!/bin/bash

KEYWORDS_OCTILLERY="Octillery"
KEYWORDS_ODDISH="Oddish"
KEYWORDS_OMANYTE="Omanyte"
KEYWORDS_OMASTAR="Omastar"
KEYWORDS_ONIX="\bOnix"
KEYWORDS_OSHAWOTT="Oshawott"
KEYWORDS_POKEMONSPECIES_O="$KEYWORDS_OCTILLERY|$KEYWORDS_ODDISH|$KEYWORDS_OMANYTE|$KEYWORDS_OMASTAR|$KEYWORDS_ONIX|$KEYWORDS_OSHAWOTT"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'O' scripts"

  OCTILLERY=$(egrep -i "$KEYWORDS_OCTILLERY" "$NEWPAGES")
  ODDISH=$(egrep -i "$KEYWORDS_ODDISH" "$NEWPAGES")
  OMANYTE=$(egrep -i "$KEYWORDS_OMANYTE" "$NEWPAGES")
  OMASTAR=$(egrep -i "$KEYWORDS_OMASTAR" "$NEWPAGES")
  ONIX=$(egrep -i "$KEYWORDS_ONIX" "$NEWPAGES")
  OSHAWOTT=$(egrep -i "$KEYWORDS_OSHAWOTT" "$NEWPAGES")

  categorize "OCTILLERY" "Octillery"
  categorize "ODDISH" "Oddish"
  categorize "OMANYTE" "Omanyte"
  categorize "OMASTAR" "Omastar"
  categorize "ONIX" "Onix"
  categorize "OSHAWOTT" "Oshawott"

  debug_end "Pokemon 'O' scripts"

fi