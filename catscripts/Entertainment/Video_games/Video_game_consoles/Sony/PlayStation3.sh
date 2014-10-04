#!/bin/bash

KEYWORDS_PLAYSTATION3="Play(| )Station(| )3|\bPS(| )3|Play(| )Station(| )Eye|Play(| )Station(| )Move"
KEYWORDS_PLAYSTATION3_ALL="$KEYWORDS_PLAYSTATION3"

if [ "$1" == "" ];
then

  debug_start "PlayStation 3"

  PS3=$(egrep -i "$KEYWORDS_PLAYSTATION3" "$NEWPAGES")

  categorize "PS3" "PlayStation 3"

  debug_end "PlayStation 3"

fi