#!/bin/bash
#Categorization script for the children's cartoon SpongeBob SquarePants

KEYWORDS_SPONGEBOB="SpongeBob|sponge bob|SquarePants|Krusty Krab|Patrick Star|Sandy Cheeks|(Eugene|Mr(|\.)) Krabs"

if [ "$1" == "" ];
then

  debug_start "SpongeBob SquarePants"

  SPONGEBOB=$(egrep -i "$KEYWORDS_SPONGEBOB" newpages.txt)

  if [ "$SPONGEBOB" != "" ];
  then
    printf "%s" "$SPONGEBOB" > SpongeBobSquarePants.txt
    export CATFILE="SpongeBobSquarePants.txt"
    export CATNAME="SpongeBob SquarePants"
    $CATEGORIZE
    rm SpongeBobSquarePants.txt
    unset SPONGEBOB
  fi

  debug_end "SpongeBob SquarePants"

fi