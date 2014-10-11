#!/bin/bash

KEYWORDS_NINTENDO_GAMECUBE="Game(| )Cube"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Nintendo GameCube"

  GAMECUBE=$(egrep -i "$KEYWORDS_NINTENDO_GAMECUBE" "$NEWPAGES")

  categorize "GAMECUBE" "Nintendo GameCube"

  debug_end "Nintendo GameCube"

fi