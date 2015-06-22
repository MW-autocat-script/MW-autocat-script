#!/bin/bash

debug_start "Video game consoles"

CONSOLEDIR="./catscripts/Entertainment/Video_games/Video_game_consoles"

. $CONSOLEDIR/Atari/Atari2600.sh #KEYWORDS_ATARI2600_ALL

. $CONSOLEDIR/Nintendo/Nintendo64.sh
. $CONSOLEDIR/Nintendo/NintendoDS.sh #KEYWORDS_DS_ALL
. $CONSOLEDIR/Nintendo/NintendoGameBoy.sh #KEYWORDS_GAMEBOY_ALL
. $CONSOLEDIR/Nintendo/NintendoGameCube.sh
. $CONSOLEDIR/Nintendo/SNES.sh #KEYWORDS_SNES_ALL
. $CONSOLEDIR/Nintendo/NintendoWii.sh
. $CONSOLEDIR/Nintendo/NintendoWiiU.sh


. $CONSOLEDIR/Sony/PlayStation.sh
. $CONSOLEDIR/Sony/PlayStation2.sh
. $CONSOLEDIR/Sony/PlayStation3.sh
. $CONSOLEDIR/Sony/PlayStation4.sh
. $CONSOLEDIR/Sony/PlayStationNetwork.sh # Not a game console, but it's easier to categorize it here
. $CONSOLEDIR/Sony/PlayStationPortable.sh


. $CONSOLEDIR/Microsoft/Xbox.sh
. $CONSOLEDIR/Microsoft/Xbox360.sh
. $CONSOLEDIR/Microsoft/XboxLive.sh # Not a game console, but it's easier to categorize it here
. $CONSOLEDIR/Microsoft/XboxOne.sh

debug_end "Video game consoles"

