#!/bin/bash

export KEYWORDS_MMORPG_CABAL="Cabal(| )Online|Altar(| )of(| )Karion"

if [ "$1" == "" ];
then

  debug_start "Cabal Online"

  CABAL=$(egrep -i "$KEYWORDS_MMORPG_CABAL" "$NEWPAGES")

  categorize "CABAL" "Cabal Online"

  debug_end "Cabal Online"

fi