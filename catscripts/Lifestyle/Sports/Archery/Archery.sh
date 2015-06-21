#!/bin/bash

KEYWORDS_ARCHERY="Archery|Gakgung|Gungdo"
KEYWORDS_ARCHERY_EXCLUDE="Evony|Rune(| )Scape|Final(| )Fantasy|Gokudera"
KEYWORDS_ARCHERY_ALL="$KEYWORDS_ARCHERY"

if [ "$1" == "" ];
then
  
  debug_start "Archery"

  ARCHERY=$(egrep -i "$KEYWORDS_ARCHERY" "$NEWPAGES" | egrep -iv "$KEYWORDS_ARCHERY_EXCLUDE")
  
  categorize "ARCHERY" "Archery"

  debug_end "Archery"

fi