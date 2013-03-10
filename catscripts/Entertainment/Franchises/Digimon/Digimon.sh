#!/bin/bash

egrep -i 'Digimon' newpages.txt | egrep -iv 'Digimon World ([0-9]{1,}|DS|Dusk|Championship|Data Squad|Dawn|Lost Evolution|Re:Digitize)' >> Digimon.txt

DIGIMON=`stat --print=%s Digimon.txt`

if [ $DIGIMON -ne 0 ];
then
  export CATFILE="Digimon.txt"
  export CATNAME="Digimon"
  ./catscripts/Categorize.sh
fi

rm Digimon.txt