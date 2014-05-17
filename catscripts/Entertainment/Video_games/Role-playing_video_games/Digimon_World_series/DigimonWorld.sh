#!/bin/bash

egrep -i 'Digimon World ([0-9]{1,}|DS|Dusk|Championship|Data Squad|Dawn|Lost Evolution|Re:Digitize)' newpages.txt >> DigimonWorld.txt

WORLD=$(stat --print=%s DigimonWorld.txt)

if [ $WORLD -ne 0 ];
then
  export CATFILE="DigimonWorld.txt"
  export CATNAME="Digimon World series"
  $CATEGORIZE
fi

rm DigimonWorld.txt