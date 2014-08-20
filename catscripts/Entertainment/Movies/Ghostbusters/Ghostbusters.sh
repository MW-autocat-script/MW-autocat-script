#!/bin/bash

export KEYWORDS_MOVIES_GHOSTBUSTERS="Ghost(| )buster"

if [ "$1" == "" ];
then

  debug_start "Ghostbusters" #Who you gonna call? :)

  GHOSTBUSTER=$(egrep -i "$KEYWORDS_MOVIES_GHOSTBUSTERS" "$NEWPAGES")

  if [ "$GHOSTBUSTER" != "" ];
  then
    printf "%s" "$GHOSTBUSTER" > Ghostbusters.txt
    export CATFILE="Ghostbusters.txt"
    export CATNAME="Ghostbusters"
    $CATEGORIZE
    rm Ghostbusters.txt
    unset GHOSTBUSTER
  fi

  debug_end "Ghostbusters"

fi