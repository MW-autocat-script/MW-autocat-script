#!/bin/bash

KEYWORDS_NINTENDO_GAMECUBE="Game(| )Cube"

egrep -i "$KEYWORDS_NINTENDO_GAMECUBE" newpages.txt >> NintendoGameCube.txt

GAMECUBE=`stat --print=%s NintendoGameCube.txt`

if [ $GAMECUBE -ne 0 ];
then
  export CATFILE="NintendoGameCube.txt"
  export CATNAME="Nintendo GameCube"
  $CATEGORIZE
fi

rm NintendoGameCube.txt