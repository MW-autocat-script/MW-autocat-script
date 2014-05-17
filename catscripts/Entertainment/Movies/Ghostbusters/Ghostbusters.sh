#!/bin/bash

export KEYWORDS_MOVIES_GHOSTBUSTERS="Ghost(| )buster"

egrep -i "$KEYWORDS_MOVIES_GHOSTBUSTERS" newpages.txt >> Ghostbusters.txt

GHOSTBUSTER=$(stat --print=%s Ghostbusters.txt)

if [ $GHOSTBUSTER -ne 0 ];
then
  export CATFILE="Ghostbusters.txt"
  export CATNAME="Ghostbusters"
  $CATEGORIZE
fi

rm Ghostbusters.txt