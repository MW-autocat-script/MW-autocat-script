#!/bin/bash

egrep -i 'Volcano' newpages.txt >> Volcanoes.txt
egrep -i 'Earth(| )quake' newpages.txt >> Earthquakes.txt
egrep -i 'seismograph|seismology|geology|geological' newpages.txt | egrep -iv 'volcano|earth(| )quake' >> Geology.txt

GEOLOGY=`stat --print=%s Geology.txt`
VOLCANOES=`stat --print=%s Volcanoes.txt`
EARTHQUAKES=`stat --print=%s Earthquakes.txt`

if [ $GEOLOGY -ne 0 ];
then
  export CATFILE="Geology.txt"
  export CATNAME="Geology"
  ./catscripts/Categorize.sh
fi

if [ $EARTHQUAKES -ne 0 ];
then
  export CATFILE="Earthquakes.txt"
  export CATNAME="Earthquakes"
  ./catscripts/Categorize.sh
fi

rm [ $VOLCANOES -ne 0 ];
then
  export CATFILE="Volcanoes.txt"
  export CATNAME="Volcano"
  ./catscripts/Categorize.sh
fi

rm Geology.txt
rm Volcanoes.txt
rm Earthquakes.txt