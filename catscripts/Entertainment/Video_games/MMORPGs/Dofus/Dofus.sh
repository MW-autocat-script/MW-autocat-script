#!/bin/bash

export KEYWORDS_MMORPG_DOFUS="Dofus"

if [ "$1" == "" ];
then

  debug_start "Dofus"

  DOFUS=$(egrep -i "$KEYWORDS_MMORPG_DOFUS" "$NEWPAGES")

  categorize "DOFUS" "Dofus"

  debug_end "Dofus"

fi