#!/bin/bash

KEYWORDS_PS2="Play(| )Station(| )2|\bPS(| )2\b"
KEYWORDS_PS2_EXCLUDE="PS(| )2(| )(mouse|port|keyboard)"
KEYWORDS_PS2_ALL="$KEYWORDS_PS2"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "PlayStation 2"

  PS2=$(egrep -i "$KEYWORDS_PS2" "$NEWPAGES" | egrep -iv "$KEYWORDS_PS2_EXCLUDE")

  categorize "PS2" "PlayStation 2"

  debug_end "PlayStation 2"

fi