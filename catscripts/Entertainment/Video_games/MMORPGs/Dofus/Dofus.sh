#!/bin/bash

export KEYWORDS_MMORPG_DOFUS="Dofus"

if [ "$1" == "" ];
then

  debug_start "Dofus"

  DOFUS=$(egrep -i "$KEYWORDS_MMORPG_DOFUS" newpages.txt)

  if [ "$DOFUS" != "" ];
  then
    printf "%s" "$DOFUS" > Dofus.txt
    export CATFILE="Dofus.txt"
    export CATNAME="Dofus"
    $CATEGORIZE
    rm Dofus.txt
    unset DOFUS
  fi

  debug_start "Dofus"

fi