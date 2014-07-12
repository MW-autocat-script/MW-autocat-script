#!/bin/bash

KEYWORDS_DWARFPLANET="Dwarf(| )planet"
KEYWORDS_PLUTO="\bPluto(|s)\b"
KEYWORDS_PLUTO_EXCLUDE="Pluto(| )the(| )Pup"
KEYWORDS_ERIS="\bEris"
KEYWORDS_DWARFPLANET_EXCLUDE="$KEYWORDS_PLUTO|$KEYWORDS_ERIS"

if [ "$1" == "" ];
then

  debug_start "Dwarf planets"

  DWARF=$(egrep -i "$KEYWORDS_DWARFPLANET" newpages.txt | egrep -iv "$KEYWORDS_DWARFPLANET_EXCLUDE")
  PLUTO=$(egrep -i "$KEYWORDS_PLUTO" newpages.txt | egrep -iv "$KEYWORDS_PLUTO_EXCLUDE")
  ERIS=$(egrep -i "$KEYWORDS_ERIS" newpages.txt)

  if [ "$DWARF" != "" ];
  then
    printf "%s" "$DWARF" > Dwarf.txt
    export CATFILE="Dwarf.txt"
    export CATNAME="Dwarf planets"
    $CATEGORIZE
    rm Dwarf.txt
    unset DWARF
  fi

  if [ "$PLUTO" != "" ];
  then
    printf "%s" "$PLUTO" > Pluto.txt
    export CATFILE="Pluto.txt"
    export CATNAME="Pluto"
    $CATEGORIZE
    rm Pluto.txt
    unset PLUTO
  fi

  if [ "$ERIS" != "" ];
  then
    printf "%s" "$ERIS" > Eris.txt
    export CATFILE="Eris.txt"
    export CATNAME="Eris"
    $CATEGORIZE
    rm Eris.txt
    unset ERIS
  fi

  debug_end "Dwarf planets"

fi