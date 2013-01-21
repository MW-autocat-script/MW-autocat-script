#!/bin/bash

cat newpages.txt | egrep -i 'MP(3|4) player|portable media player' | egrep -iv 'iPod|\bZune' > PMP.txt

PMP=`stat --print=%s PMP.txt`

if [ $PMP -ne 0 ];
then
  export CATFILE="PMP.txt"
  export CATNAME="Portable media players"
  ./catscripts/Categorize.sh
fi

rm PMP.txt
./catscripts/Technology/Portable_media_players/iPods/iPods.sh
./catscripts/Technology/Portable_media_players/Zune/Zune.sh