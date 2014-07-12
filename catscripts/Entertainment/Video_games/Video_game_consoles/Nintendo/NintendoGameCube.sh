#!/bin/bash

KEYWORDS_NINTENDO_GAMECUBE="Game(| )Cube"

if [ "$1" == "" ];
then

  debug_start "Nintendo GameCube"

  GAMECUBE=$(egrep -i "$KEYWORDS_NINTENDO_GAMECUBE" newpages.txt)

  if [ "$GAMECUBE" != "" ];
  then
    printf "%s" "$GAMECUBE" > NintendoGameCube.txt
    export CATFILE="NintendoGameCube.txt"
    export CATNAME="Nintendo GameCube"
    $CATEGORIZE
    rm NintendoGameCube.txt
    unset GAMECUBE
  fi

  debug_end "Nintendo GameCube"

fi