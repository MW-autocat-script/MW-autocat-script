#!/bin/bash

KEYWORDS_ROCKYMOUNTAINS="Rocky(| )Mountain|the(| )Rock(ies|ys)"
KEYWORDS_ROCKYMOUNTAINS_EXCLUDE="Rocky(| )Mountain(| )Oysters"

if [ "$1" == "" ];
then
  
  debug_start "Rocky Mountains"

  ROCKYMOUNTAINS=$(egrep -i "$KEYWORDS_ROCKYMOUNTAINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ROCKYMOUNTAINS_EXCLUDE")

  if [ "$ROCKYMOUNTAINS" != "" ];
  then
    printf "%s" "$ROCKYMOUNTAINS" > RockyMountains.txt
    export CATFILE="RockyMountains.txt"
    export CATNAME="Rocky Mountains"
    $CATEGORIZE
    rm RockyMountains.txt
    unset ROCKYMOUNTAINS
  fi

  debug_end "Rocky Mountains"

fi