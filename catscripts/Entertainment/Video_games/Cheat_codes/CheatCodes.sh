#!/bin/bash

KEYWORDS_CHEATCODES="cheat(| )code|cheats(| )for"
KEYWORDS_ACTIONREPLAY="Action(| )Replay|\bar(| )code"
KEYWORDS_CHEATCODES_EXCLUDE="$KEYWORDS_ACTIONREPLAY"

if [ "$1" == "" ];
then
  
  debug_start "Cheat codes"


  CHEATCODES="$(egrep -i "$KEYWORDS_CHEATCODES" newpages.txt | egrep -iv "$KEYWORDS_CHEATCODES_EXCLUDE")"
  ACTIONREPLAY="$(egrep -i "$KEYWORDS_ACTIONREPLAY" newpages.txt)"


  if [ "$CHEATCODES" != "" ];
  then
    printf "%s" "$CHEATCODES" > CheatCodes.txt
    export CATFILE="CheatCodes.txt"
    export CATNAME="Cheat codes"
    $CATEGORIZE
    rm CheatCodes.txt
    unset CHEATCODES
  fi

  if [ "$ACTIONREPLAY" != "" ];
  then
    printf "%s" "$ACTIONREPLAY" > ActionReplay.txt
    export CATFILE="ActionReplay.txt"
    export CATNAME="Action Replay"
    $CATEGORIZE
    rm ActionReplay.txt
    unset ACTIONREPLAY
  fi

  debug_end "Cheat codes"

fi