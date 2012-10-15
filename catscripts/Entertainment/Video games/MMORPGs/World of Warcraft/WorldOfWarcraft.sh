#!/bin/bash

cat newpages.txt | egrep -i 'World of Warcraft|w\.o\.w' >> WorldOfWarcraft.txt
cat newpages.txt | egrep 'WoW' >> WorldOfWarcraft.txt

WOW=`stat --print=%s WorldOfWarcraft.txt`

if [ $WOW -ne 0 ];
then
  export CATFILE="WorldOfWarcraft.txt"
  export CATNAME="World of Warcraft"
  ./catscripts/Categorize.sh
fi

rm WorldOfWarcraft.txt