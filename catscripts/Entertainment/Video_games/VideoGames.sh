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

CURRENTDIR="./catscripts/Entertainment/Video_games"

$CURRENTDIR/Cheat_codes/CheatCodes.sh 
$CURRENTDIR/MMORPGs/MMORPGs.sh
$CURRENTDIR/Video\ game\ consoles/Consoles.sh
$CURRENTDIR/Video\ games\ by\ series/VideoGameSeries.sh
$CURRENTDIR/Educational_video_games/EducationalGames.sh
$CURRENTDIR/Open-world_video_games/Openworld.sh
$CURRENTDIR/Role-playing\ video\ games/RolePlayingVideoGames.sh
$CURRENTDIR/Strategy_games/Strategy.sh