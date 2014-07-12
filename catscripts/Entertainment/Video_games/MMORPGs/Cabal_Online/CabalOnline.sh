#!/bin/bash

export KEYWORDS_MMORPG_CABAL="Cabal(| )Online|Altar(| )of(| )Karion"

if [ "$1" == "" ];
then

  debug_start "Cabal Online"

  CABAL=$(egrep -i "$KEYWORDS_MMORPG_CABAL" newpages.txt)

  if [ "$CABAL" != "" ];
  then
    printf "%s" "$CABAL" > CabalOnline.txt
    export CATFILE="CabalOnline.txt"
    export CATNAME="Cabal Online"
    $CATEGORIZE
    rm CabalOnline.txt
    unset CABAL
  fi

  debug_end "Cabal Online"

fi