#!/bin/bash

KEYWORDS_DIGIMONWORLD="Digimon(| )World(| )([0-9]{1,}|DS|Dusk|Championship|Data(| )Squad|Dawn|Lost(| )Evolution|Re:Digitize)"

if [ "$1" == "" ];
then

  debug_start "Digimon World"

  WORLD=$(egrep -i "$KEYWORDS_DIGIMONWORLD" "$NEWPAGES")

  categorize "WORLD" "Digimon World series"

  debug_end "Digimon World"

fi