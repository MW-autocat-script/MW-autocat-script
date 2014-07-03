#!/bin/bash

KEYWORDS_PHYSICS="physics|heat(| )conduction|conduction(| )of(| )heat"

if [ "$1" == "" ];
then

  debug_start "Physics"

  PHYSICS=$(egrep -i "$KEYWORDS_PHYSICS" newpages.txt)

  if [ "$PHYSICS" != "" ];
  then
    printf "%s" "$PHYSICS" > Physics.txt
    export CATFILE="Physics.txt"
    export CATNAME="Physics"
    $CATEGORIZE
    rm Physics.txt
    unset PHYSICS
  fi

  debug_end "Physics"

fi
