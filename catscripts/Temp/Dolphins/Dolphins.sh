#!/bin/bash

egrep -i 'Dolphin' newpages.txt | egrep -iv 'Miami Dolphin|emulator' >> Dolphins.txt

DOLPHIN=`stat --print=%s Dolphins.txt`

if [ $DOLPHIN -ne 0 ];
then
  export CATFILE="Dolphins.txt"
  export CATNAME="Dolphins"
  $CATEGORIZE
fi

rm Dolphins.txt