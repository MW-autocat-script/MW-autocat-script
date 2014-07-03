#!/bin/bash

export KEYWORDS_MMORPG_KAROS="\bKaros\b"

if [ "$1" == "" ];
then

  debug_start "Karos Online"

  KAROS=$(egrep -i "$KEYWORDS_MMORPG_KAROS" newpages.txt)

  if [ "$KAROS" != "" ];
  then
    printf "%s" "$KAROS" > KarosOnline.txt
    export CATFILE="KarosOnline.txt"
    export CATNAME="Karos Online"
    $CATEGORIZE
    rm KarosOnline.txt
    unset KAROS
  fi

  debug_end "Karos Online"

fi