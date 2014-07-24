#!/bin/bash

KEYWORDS_ACTOR_ANDYGRIFFITH="Andy(| )Griffith"
KEYWORDS_ACTOR_ANDYGRIFFITH_EXCLUDE="The(| )Andy(| )Griffith(| )Show"

if [ "$1" == "" ];
then
  
  debug_start "Andy Griffith"

  GRIFFITH=$(egrep -i "$KEYWORDS_ACTOR_ANDYGRIFFITH" newpages.txt | egrep -iv "$KEYWORDS_ACTOR_ANDYGRIFFITH_EXCLUDE")

  if [ "$GRIFFITH" != "" ];
  then
    printf "%s" "$GRIFFITH" > AndyGriffith.txt
    export CATFILE="AndyGriffith.txt"
    export CATNAME="Andy Griffith"
    $CATEGORIZE
    rm AndyGriffith.txt
    unset GRIFFITH
  fi

  debug_end "Andy Griffith"

fi