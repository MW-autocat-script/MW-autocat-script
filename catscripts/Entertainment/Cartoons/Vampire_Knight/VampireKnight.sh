#!/bin/bash

KEYWORDS_VAMPIREKNIGHT="Vampire(| )Knight"

if [ "$1" == "" ];
then

  debug_start "Vampire Knight"

  VAMPIREKNIGHT=$(egrep -i "$KEYWORDS_VAMPIREKNIGHT" newpages.txt)

  if [ "$VAMPIREKNIGHT" != "" ];
  then
    printf "%s" "$VAMPIREKNIGHT" > VampireKnight.txt
    export CATFILE="VampireKnight.txt"
    export CATNAME="Vampire Knight"
    $CATEGORIZE
    rm VampireKnight.txt
    unset VAMPIREKNIGHT
  fi

  debug_end "Vampire Knight"

fi