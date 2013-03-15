#!/bin/bash

egrep -i 'World of Warcraft|w\.o\.w' newpages.txt >> WorldOfWarcraft.txt
egrep 'WoW' newpages.txt >> WorldOfWarcraft.txt

WOW=`stat --print=%s WorldOfWarcraft.txt`

if [ $WOW -ne 0 ];
then
  export CATFILE="WorldOfWarcraft.txt"
  export CATNAME="World of Warcraft"
  $CATEGORIZE
fi

rm WorldOfWarcraft.txt