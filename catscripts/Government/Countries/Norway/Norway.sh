#!/bin/bash

. ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh norun #KEYWORDS_VIKINGS

KEYWORDS_NORWAY="Norway"
KEYWORDS_NORWAY_EXCLUDE="$KEYWORDS_VIKINGS"
KEYWORDS_NORWAY_ALL="$KEYWORDS_NORWAY"

if [ "$1" == "" ];
then

  debug_start "Norway"

  NORWAY=$(egrep -i "$KEYWORDS_NORWAY" "$NEWPAGES" | egrep -iv "$KEYWORDS_NORWAY_EXCLUDE")

  if [ "$NORWAY" != "" ];
  then
    printf "%s" "$NORWAY" > Norway.txt
    export CATFILE="Norway.txt"
    export CATNAME="Norway"
    $CATEGORIZE
    rm Norway.txt
    unset NORWAY
  fi

  debug_end "Norway"

fi
