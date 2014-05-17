#!/bin/bash

KEYWORDS_ROCKYMOUNTAINS="Rocky(| )Mountain|the(| )Rock(ies|ys)"
KEYWORDS_ROCKYMOUNTAINS_EXCLUDE="Rocky(| )Mountain(| )Oysters"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_ROCKYMOUNTAINS" newpages.txt | egrep -iv "$KEYWORDS_ROCKYMOUNTAINS_EXCLUDE" >> RockyMountains.txt

  ROCKYMOUNTAINS=$(stat --print=%s RockyMountains.txt)

  if [ $ROCKYMOUNTAINS -ne 0 ];
  then
    export CATFILE="RockyMountains.txt"
    export CATNAME="Rocky Mountains"
    $CATEGORIZE
  fi

  rm RockyMountains.txt

fi