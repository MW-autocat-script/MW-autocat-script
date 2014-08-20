#!/bin/bash

KEYWORDS_MOON="\bMoon\b|(lunar|solar|total)(| )eclipse"
KEYWORDS_MOON_EXCLUDE="Sailor(| )Moon|Type( |-)Moon|Harvest(| )Moon|moon(| )stone|Twilight|Pokémon|Pokemon|Jacob|Bella|Edward|RuneScape"

if [ "$1" == "" ];
then

  debug_start "Moon"

  MOON=$(egrep -i "$KEYWORDS_MOON" "$NEWPAGES" | egrep -iv "$KEYWORDS_MOON_EXCLUDE")

  if [ "$MOON" != "" ];
  then
    printf "%s" "$MOON" > Moon.txt
    export CATFILE="Moon.txt"
    export CATNAME="Moon"
    $CATEGORIZE
    rm Moon.txt
    unset MOON
  fi

  debug_end "Moon"

fi