#!/bin/bash

ASTRONOMYDIR="./catscripts/Science/Astronomy"
KEYWORDS_ASTEROIDS="Asteroid"
KEYWORDS_ASTEROIDS_EXCLUDE="download|game"

if [ "$1" == "" ];
then
 
  debug_start "Astronomy"

  $ASTRONOMYDIR/Dwarf_planets/Dwarfplanets.sh
  $ASTRONOMYDIR/Planets/Planets.sh
  $ASTRONOMYDIR/Moon/Moon.sh

  ASTEROIDS=$(egrep -i "$KEYWORDS_ASTEROIDS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ASTEROIDS_EXCLUDE")

  categorize "ASTEROIDS" "Asteroids"

  debug_end "Astronomy"

else

  $ASTRONOMYDIR/Dwarf_planets/Dwarfplanets.sh norun
  $ASTRONOMYDIR/Planets/Planets.sh norun
  $ASTRONOMYDIR/Moon/Moon.sh norun

fi