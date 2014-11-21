#!/bin/bash

KEYWORDS_MOLERATS="Mole(| )rat"
KEYWORDS_MOLERATS_ALL="$KEYWORDS_MOLERATS"

if [ "$1" == "" ];
then
  
  debug_start "Mole rats"

  MOLERATS=$(egrep -i "$KEYWORDS_MOLERATS" "$NEWPAGES")

  categorize "MOLERATS" "Mole rats"

  debug_end "Mole rats"

fi