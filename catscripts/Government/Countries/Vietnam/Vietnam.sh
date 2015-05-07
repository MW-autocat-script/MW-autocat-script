#!/bin/bash

KEYWORDS_VIETNAM="Vietnam(|s)\b"
KEYWORDS_VIETNAMWAR="Vietnam(| )(War|Vet(eran|(\b|s)))|(North|South)(|ern)(| )Vietnam|Tet(| )Offensive"
KEYWORDS_HANOI="\bHanoi"
KEYWORDS_VIETNAM_EXCLUDE="$KEYWORDS_VIETNAMWAR|$KEYWORDS_HANOI"
KEYWORDS_VIETNAM_ALL="$KEYWORDS_VIETNAM|$KEYWORDS_VIETNAMWAR"

if [ "$1" == "" ];
then
  
  debug_start "Vietnam"

  VIETNAM=$(egrep -i "$KEYWORDS_VIETNAM" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIETNAM_EXCLUDE")
  VIETNAMWAR=$(egrep -i "$KEYWORDS_VIETNAMWAR" "$NEWPAGES")
  HANOI=$(egrep -i "$KEYWORDS_HANOI" "$NEWPAGES")

  categorize "VIETNAM" "Vietnam"
  categorize "VIETNAMWAR" "Vietnam War"
  categorize "HANOI" "Hanoi"

  debug_end "Vietnam"

fi