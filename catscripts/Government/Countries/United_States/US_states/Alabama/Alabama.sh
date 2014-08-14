#!/bin/bash

KEYWORDS_ALABAMA="Alabama|,(| )AL( |$)"
KEYWORDS_ALABAMA_EXCLUDE="Sweet(| )Home(| )Alabama"
KEYWORDS_ALABAMA_ALL="$KEYWORDS_ALABAMA"

if [ "$1" == "" ];
then

  debug_start "Alabama"

  ALABAMA=$(egrep -i "$KEYWORDS_ALABAMA" newpages.txt | egrep -iv "$KEYWORDS_ALABAMA_EXCLUDE") 

  if [ "$ALABAMA" != "" ];
  then
    printf "%s" "$ALABAMA" > Alabama.txt
    export CATFILE="Alabama.txt"
    export CATNAME="Alabama"
    $CATEGORIZE
    rm Alabama.txt
    unset ALABAMA
  fi

  debug_end "Alabama"

fi