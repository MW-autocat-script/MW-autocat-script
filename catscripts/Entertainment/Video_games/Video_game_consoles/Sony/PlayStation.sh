#!/bin/bash

KEYWORDS_PS1="\bPS(| )(1\b|one)|Play(| )Station"
SONYDIR="./catscripts/Entertainment/Video_games/Video_game_consoles/Sony"

if [ "$1" == "" ];
then
  
debug_start "PlayStation"

  . $SONYDIR/PlayStation2.sh norun #KEYWORDS_PS2
  . $SONYDIR/PlayStation3.sh norun #KEYWORDS_PLAYSTATION3
  . $SONYDIR/PlayStation4.sh norun #KEYWORDS_PS4
  . $SONYDIR/PlayStationNetwork.sh norun #KEYWORDS_PLAYSTATION_NETWORK
  . $SONYDIR/PlayStationPortable.sh norun #KEYWORDS_PSP

  KEYWORDS_PS1_EXCLUDE="$KEYWORDS_PS2|$KEYWORDS_PLAYSTATION3|$KEYWORDS_PS4|$KEYWORDS_PLAYSTATION_NETWORK|$KEYWORDS_PSP"

  PS1=$(egrep -i "$KEYWORDS_PS1" "$NEWPAGES" | egrep -iv "$KEYWORDS_PS1_EXCLUDE")

  if [ "$PS1" != "" ];
  then
    printf "%s" "$PS1" > PlayStation.txt
    export CATFILE="PlayStation.txt"
    export CATNAME="PlayStation"
    $CATEGORIZE
    rm PlayStation.txt
    unset PS1
  fi

  debug_end "PlayStation"

fi