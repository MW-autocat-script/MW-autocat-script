#!/bin/bash

KEYWORDS_LORDOFTHEFLIES="Lord(| )of(| )the(| )Flies"

if [ "$1" == "" ];
then
  
  debug_start "Lord of the Flies"

  FLYLORD=$(egrep -i "$KEYWORDS_LORDOFTHEFLIES" "$NEWPAGES")

  categorize "FLYLORD" "Lord of the Flies"

  debug_end "Lord of the Flies"

fi