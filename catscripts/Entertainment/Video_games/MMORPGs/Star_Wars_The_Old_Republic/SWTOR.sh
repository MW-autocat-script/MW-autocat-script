#!/bin/bash

export KEYWORDS_MMORPG_SWTOR="The(| )Old(| )Republic|SW(:|)TOR"
KEYWORDS_MMORPG_SWTOR_EXCLUDE="Knights(| )of(| )the(| )old(| )Republic"

if [ "$1" == "" ];
then

  debug_start "Star Wars: The Old Republic"

  SWTOR=$(egrep -i "$KEYWORDS_MMORPG_SWTOR" "$NEWPAGES" | egrep -iv "$KEYWORDS_MMORPG_SWTOR_EXCLUDE")

  if [ "$SWTOR" != "" ];
  then
    printf "%s" "$SWTOR" > SWTOR.txt
    export CATFILE="SWTOR.txt"
    export CATNAME="Star Wars: The Old Republic"
    $CATEGORIZE
    rm SWTOR.txt
    unset SWTOR
  fi

  debug_end "Star Wars: The Old Republic"

fi