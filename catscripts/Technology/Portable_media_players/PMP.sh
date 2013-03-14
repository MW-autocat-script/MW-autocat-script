#!/bin/bash

egrep -i 'MP(3|4) player|portable media player' newpages.txt | egrep -iv 'iPod|\bZune' > PMP.txt

PMP=`stat --print=%s PMP.txt`

if [ $PMP -ne 0 ];
then
  export CATFILE="PMP.txt"
  export CATNAME="Portable media players"
  ./catscripts/Categorize.sh
fi

rm PMP.txt

CURRENTDIR="./catscripts/Technology/Portable_media_players/"

$CURRENTDIR/iPods/iPods.sh
$CURRENTDIR/Zune/Zune.sh