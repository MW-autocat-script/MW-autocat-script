#!/bin/bash

KEYWORDS_CHEATCODES="cheat(| )code|cheats(| )for"
KEYWORDS_ACTIONREPLAY="Action(| )Replay|\bar(| )code"
KEYWORDS_CHEATCODES_EXCLUDE="$KEYWORDS_ACTIONREPLAY"

if [ "$1" == "" ];
then
  
  debug_start "Cheat codes"

  CHEATCODES=$(egrep -i "$KEYWORDS_CHEATCODES" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHEATCODES_EXCLUDE")
  ACTIONREPLAY=$(egrep -i "$KEYWORDS_ACTIONREPLAY" "$NEWPAGES")

  categorize "CHEATCODES" "Cheat codes"
  categorize "ACTIONREPLAY" "Action Replay"

  debug_end "Cheat codes"

fi