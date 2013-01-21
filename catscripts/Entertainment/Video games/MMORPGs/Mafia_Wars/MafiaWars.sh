#!/bin/bash

egrep -i 'Mafia(| )Wars' newpages.txt > MafiaWars.txt

MAFIA=`stat --print=%s MafiaWars.txt`

if [ $MAFIA -ne 0 ];
then
  export CATFILE="MafiaWars.txt"
  export CATNAME="Mafia Wars"
  ./catscripts/Categorize.sh
fi

rm MafiaWars.txt