#!/bin/bash

egrep -i 'Volcano' newpages.txt | egrep -iv 'RuneScape' >> Volcanoes.txt
egrep -i 'Earth(| )quake' newpages.txt >> Earthquakes.txt
egrep -i 'seismograph|seismology|geology|geological' newpages.txt | egrep -iv 'volcano|earth(| )quake' >> Geology.txt

GEOLOGY=`stat --print=%s Geology.txt`
VOLCANOES=`stat --print=%s Volcanoes.txt`
EARTHQUAKES=`stat --print=%s Earthquakes.txt`

if [ $GEOLOGY -ne 0 ];
then
  export CATFILE="Geology.txt"
  export CATNAME="Geology"
  $CATEGORIZE
fi

if [ $EARTHQUAKES -ne 0 ];
then
  export CATFILE="Earthquakes.txt"
  export CATNAME="Earthquakes"
  $CATEGORIZE
fi

if [ $VOLCANOES -ne 0 ];
then
  export CATFILE="Volcanoes.txt"
  export CATNAME="Volcanoes"
  $CATEGORIZE
fi

rm Geology.txt
rm Volcanoes.txt
rm Earthquakes.txt