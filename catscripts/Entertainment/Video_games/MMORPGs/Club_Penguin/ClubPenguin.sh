#!/bin/bash

export KEYWORDS_MMORPG_CLUBPENGUIN="Club(| )Penguin"

if [ "$1" == "" ];
then

  debug_start "Club Penguin"

  CLUBPENGUIN=$(egrep -i "$KEYWORDS_MMORPG_CLUBPENGUIN" newpages.txt)

  if [ "$CLUBPENGUIN" != "" ];
  then
    printf "%s" "$CLUBPENGUIN" > ClubPenguin.txt
    export CATFILE="ClubPenguin.txt"
    export CATNAME="Club Penguin"
    $CATEGORIZE
    rm ClubPenguin.txt
    unset CLUBPENGUIN
  fi

  debug_end "Club Penguin"

fi