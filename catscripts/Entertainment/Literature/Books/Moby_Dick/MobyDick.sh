#!/bin/bash

KEYWORDS_MOBYDICK="Moby(| )Dick|Captain(| )Ahab"

if [ "$1" == "" ];
then
  
  debug_start "Moby Dick"

  MOBYDICK=$(egrep -i "$KEYWORDS_MOBYDICK" "$NEWPAGES")

  categorize "MOBYDICK" "Moby Dick"

  debug_end "Moby Dick"

fi