#!/bin/bash

export KEYWORDS_MMORPG_RUNESOFMAGIC="Runes(| )of(| )Magic"

if [ "$1" == "" ];
then

  debug_start "Runes of Magic"

  RUNESOFMAGIC=$(egrep -i "$KEYWORDS_MMORPG_RUNESOFMAGIC" "$NEWPAGES")

  if [ "$RUNESOFMAGIC" != "" ];
  then
    printf "%s" "$RUNESOFMAGIC" > RunesofMagic.txt
    export CATFILE="RunesofMagic.txt"
    export CATNAME="Runes of Magic"
    $CATEGORIZE
    rm RunesofMagic.txt
    unset RUNESOFMAGIC
  fi

  debug_end "Runes of Magic"

fi