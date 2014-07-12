#!/bin/bash

KEYWORDS_DIGIMONWORLD="Digimon(| )World(| )([0-9]{1,}|DS|Dusk|Championship|Data(| )Squad|Dawn|Lost(| )Evolution|Re:Digitize)"

if [ "$1" == "" ];
then

  debug_start "Digimon World"

  WORLD=$(egrep -i "$KEYWORDS_DIGIMONWORLD" newpages.txt)

  if [ "$WORLD" != "" ];
  then
    printf "%s" "$WORLD" > DigimonWorld.txt
    export CATFILE="DigimonWorld.txt"
    export CATNAME="Digimon World series"
    $CATEGORIZE
    rm DigimonWorld.txt
    unset WORLD
  fi

  debug_end "Digimon World"

fi