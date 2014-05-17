#!/bin/bash

export KEYWORDS_MMORPG_CLUBPENGUIN="Club(| )Penguin"

egrep -i "$KEYWORDS_MMORPG_CLUBPENGUIN" newpages.txt >> ClubPenguin.txt

CLUBPENGUIN=$(stat --print=%s ClubPenguin.txt)

if [ $CLUBPENGUIN -ne 0 ];
then
  export CATFILE="ClubPenguin.txt"
  export CATNAME="Club Penguin"
  $CATEGORIZE
fi

rm ClubPenguin.txt