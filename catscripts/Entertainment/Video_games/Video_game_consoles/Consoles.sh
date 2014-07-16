#!/bin/bash

debug_start "Video game consoles"

CONSOLEDIR="./catscripts/Entertainment/Video_games/Video_game_consoles"

. $CONSOLEDIR/Nintendo/Nintendo64.sh
. $CONSOLEDIR/Nintendo/NintendoGameCube.sh
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

