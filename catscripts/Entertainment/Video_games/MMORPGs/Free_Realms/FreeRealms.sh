#!/bin/bash

export KEYWORDS_MMORPG_FREEREALMS="Free(| )Realms"

if [ "$1" == "" ];
then

  debug_start "Free Realms"

  FREEREALMS=$(egrep -i "$KEYWORDS_MMORPG_FREEREALMS" newpages.txt)

  if [ "$FREEREALMS" != "" ];
  then
    printf "%s" "$FREEREALMS" > FreeRealms.txt
    export CATFILE="FreeRealms.txt"
    export CATNAME="Free Realms"
    $CATEGORIZE
    rm FreeRealms.txt
    unset FREEREALMS
  fi

  debug_end "Free Realms"

fi