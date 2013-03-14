#!/bin/bash

CURRENTDIR="./catscripts/Science/Astronomy"

$CURRENTDIR/Dwarf_planets/Dwarfplanets.sh
$CURRENTDIR/Planets/Planets.sh
$CURRENTDIR/Moon/Moon.sh

egrep -i 'Asteroid' newpages.txt | egrep -iv 'download|game' >> Asteroids.txt

ASTEROIDS=`stat --print=%s Asteroids.txt`

if [ $ASTEROIDS -ne 0 ];
then
  export CATFILE="Asteroids.txt"
  export CATNAME="Asteroids"
  $CATEGORIZE
fi

rm Asteroids.txt
