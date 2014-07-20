#!/bin/bash

KEYWORDS_MOBYDICK="Moby(| )Dick|Captain(| )Ahab"

if [ "$1" == "" ];
then
  
  debug_start "Moby Dick"

  MOBYDICK=$(egrep -i "$KEYWORDS_MOBYDICK" newpages.txt)

  if [ "$MOBYDICK" != "" ];
  then
    printf "%s" "$MOBYDICK" > MobyDick.txt
    export CATFILE="MobyDick.txt"
    export CATNAME="Moby Dick"
    $CATEGORIZE
    rm MobyDick.txt
    unset MOBYDICK
  fi

  debug_end "Moby Dick"

fi