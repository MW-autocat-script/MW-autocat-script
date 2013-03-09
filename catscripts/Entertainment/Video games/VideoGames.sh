#!/bin/bash

egrep -i 'Moshi Monsters|moshimonsters|moshling|furnando|furando|meowford|dustbin beaver|dustbinbeaver|dustin beaver|meowford' newpages.txt > MoshiMonsters.txt

MOSHIMONSTERS=`stat --print=%s MoshiMonsters.txt`

if [ $MOSHIMONSTERS -ne 0 ];
then
  export CATFILE="MoshiMonsters.txt"
  export CATNAME="Moshi Monsters"
  ./catscripts/Categorize.sh
fi

rm MoshiMonsters.txt

./catscripts/Entertainment/Video\ games/Cheat\ codes/CheatCodes.sh 
./catscripts/Entertainment/Video\ games/MMORPGs/MMORPGs.sh
./catscripts/Entertainment/Video\ games/Video\ game\ consoles/Consoles.sh
./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/VideoGameSeries.sh
./catscripts/Entertainment/Video\ games/Educational\ video\ games/EducationalGames.sh
./catscripts/Entertainment/Video\ games/Open-world\ video\ games/Openworld.sh
./catscripts/Entertainment/Video\ games/Role-playing\ video\ games/RolePlayingVideoGames.sh
./catscripts/Entertainment/Video\ games/Strategy_games/Strategy.sh