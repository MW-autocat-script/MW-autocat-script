#!/bin/bash

./catscripts/Science/Astronomy/Planets/Planets.sh
./catscripts/Science/Astronomy/Moon/Moon.sh

cat newpages.txt | egrep -i 'Asteroid' | egrep -iv 'download|game' >> Asteroids.txt

ASTEROIDS=`stat --print=%s Asteroids.txt`

if [ $ASTEROIDS -ne 0 ];
then
  export CATFILE="Asteroids.txt"
  export CATNAME="Asteroids"
  ./catscripts/Categorize.sh
fi

rm Asteroids.txt
