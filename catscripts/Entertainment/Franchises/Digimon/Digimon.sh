#!/bin/bash

KEYWORDS_DIGIMON="Digimon"
KEYWORDS_DIGIMON_EXCLUDE="Digimon(| )World(| )([0-9]{1,}|DS|Dusk|Championship|Data(| )Squad|Dawn|Lost(| )Evolution|Re:Digitize)"

if [ "$1" == "" ];
then

  debug_start "Digimon"

  DIGIMON=$(egrep -i "$KEYWORDS_DIGIMON" "$NEWPAGES" | egrep -iv "$KEYWORDS_DIGIMON_EXCLUDE")

  if [ "$DIGIMON" != "" ];
  then
    printf "%s" "$DIGIMON" > Digimon.txt
    export CATFILE="Digimon.txt"
    export CATNAME="Digimon"
    $CATEGORIZE
    rm Digimon.txt
    unset DIGIMON
  fi

  debug_end "Digimon"

fi