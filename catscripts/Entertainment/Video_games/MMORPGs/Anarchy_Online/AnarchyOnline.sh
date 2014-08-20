#!/bin/bash

export KEYWORDS_MMORPG_ANARCHY="Anarchy(| )Online"

if [ "$1" == "" ];
then

  debug_start "Anarchy Online"

  ANARCHY=$(egrep -i "$KEYWORDS_MMORPG_ANARCHY" "$NEWPAGES")

  if [ "$ANARCHY" != "" ];
  then
    printf "%s" "$ANARCHY" > AnarchyOnline.txt
    export CATFILE="AnarchyOnline.txt"
    export CATNAME="Anarchy Online"
    $CATEGORIZE
    rm AnarchyOnline.txt
    unset ANARCHY
  fi

  debug_end "Anarchy Online"

fi