#!/bin/bash

egrep -i 'LittleBigPlanet|Little Big Planet|\bLBP\b' newpages.txt >> LittleBigPlanet.txt

PLANET=`stat --print=%s LittleBigPlanet.txt`

if [ $PLANET -ne 0 ];
then
  export CATFILE="LittleBigPlanet.txt"
  export CATNAME="LittleBigPlanet series"
  ./catscripts/Categorize.sh
fi

rm LittleBigPlanet.txt