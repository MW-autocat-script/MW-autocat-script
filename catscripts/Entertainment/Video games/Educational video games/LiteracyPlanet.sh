#!/bin/bash

cat newpages.txt | egrep -i 'Literacy Planet|LiteracyPlanet|Litracy planet|intrepica|intreprica|interprica|intripeca' > LiteracyPlanet.txt

LITERACYPLANET=`stat --print=%s LiteracyPlanet.txt` 

if [ $LITERACYPLANET -ne 0 ];
then
  export CATFILE="LiteracyPlanet.txt"
  export CATNAME="Literacy Planet"
  ./catscripts/Categorize.sh
fi