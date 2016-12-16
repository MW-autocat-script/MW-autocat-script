#!/bin/bash

readonly KEYWORDS_ACTOR_ANDYGRIFFITH="Andy(| )Griffith"
readonly KEYWORDS_ACTOR_ANDYGRIFFITH_EXCLUDE="The(| )Andy(| )Griffith(| )Show"

if [ "$1" == "" ];
then
  
  debug_start "Andy Griffith"

  GRIFFITH=$(egrep -i "$KEYWORDS_ACTOR_ANDYGRIFFITH" "$NEWPAGES" | egrep -iv "$KEYWORDS_ACTOR_ANDYGRIFFITH_EXCLUDE")

  categorize "GRIFFITH" "Andy Griffith"

  debug_end "Andy Griffith"

fi