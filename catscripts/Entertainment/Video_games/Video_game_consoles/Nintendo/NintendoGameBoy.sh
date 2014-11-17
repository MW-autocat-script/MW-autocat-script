#!/bin/bash

KEYWORDS_GAMEBOY="Game(| )Boy"
KEYWORDS_GAMEBOYADVANCE="Game(| )Boy(| )Advance|\bGBA|Game(| )Boy(| )Micro"
KEYWORDS_GAMEBOYADVANCE_EXCLUDE="NO\$GBA|nocash"
KEYWORDS_GAMEBOY_EXCLUDE="$KEYWORDS_GAMEBOYADVANCE|$KEYWORDS_GAMEBOYADVANCE_EXCLUDE"
KEYWORDS_GAMEBOY_ALL="$KEYWORDS_GAMEBOY|$KEYWORDS_GAMEBOYADVANCE"

if [ "$1" == '' ];
then
  
  debug_start "Nintendo Game Boy"

  GAMEBOY=$(egrep -i "$KEYWORDS_GAMEBOY" "$NEWPAGES" | egrep -iv "$KEYWORDS_GAMEBOY_EXCLUDE")
  GBA=$(egrep -i "$KEYWORDS_GAMEBOYADVANCE" "$NEWPAGES" | egrep -iv "$KEYWORDS_GAMEBOYADVANCE_EXCLUDE")

  categorize "GAMEBOY" "Nintendo Game Boy"
  categorize "GBA" "Nintendo Game Boy Advance"

  debug_end "Nintendo Game Boy"

fi