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

  ASTEROIDS=$(egrep -i "$KEYWORDS_ASTEROIDS" newpages.txt | egrep -iv "$KEYWORDS_ASTEROIDS_EXCLUDE")

  if [ "$ASTEROIDS" != "" ];
  then
    printf "%s" "$ASTEROIDS" > Asteroids.txt
    export CATFILE="Asteroids.txt"
    export CATNAME="Asteroids"
    $CATEGORIZE
    rm Asteroids.txt
    unset ASTEROIDS
  fi

  debug_end "Astronomy"

else

  $ASTRONOMYDIR/Dwarf_planets/Dwarfplanets.sh norun
  $ASTRONOMYDIR/Planets/Planets.sh norun
  $ASTRONOMYDIR/Moon/Moon.sh norun

fi