#!/bin/bash

CURRENTDIR="./catscripts/Entertainment/Video_games/Video_game_consoles"

. $CURRENTDIR/Sony/PlayStation.sh
. $CURRENTDIR/Sony/PlayStation2.sh
. $CURRENTDIR/Sony/PlayStation3.sh
. $CURRENTDIR/Sony/PlayStation4.sh
. $CURRENTDIR/Sony/PlayStationPortable.sh


. $CURRENTDIR/Microsoft/Xbox.sh
. $CURRENTDIR/Microsoft/Xbox360.sh
. $CURRENTDIR/Microsoft/XboxLive.sh # Not a game console, but it's easier to categorize it here
. $CURRENTDIR/Microsoft/XboxOne.sh

