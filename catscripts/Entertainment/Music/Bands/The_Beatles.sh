#!/bin/bash

KEYWORDS_THEBEATLES="The(| )Beatles"
KEYWORDS_THEBEATLES_EXCLUDE="Paul(| )McCartney|John(| )Lennon"

if [ "$1" == "" ];
then

  debug_start "The Beatles"

  BEATLES=$(egrep -i "$KEYWORDS_THEBEATLES" "$NEWPAGES" | egrep -iv "$KEYWORDS_THEBEATLES_EXCLUDE")

  if [ "$BEATLES" != "" ];
  then
    printf "%s" "$BEATLES" > TheBeatles.txt
    export CATFILE="TheBeatles.txt"
    export CATNAME="The Beatles"
    $CATEGORIZE
    rm TheBeatles.txt
    unset BEATLES
  fi

  debug_end "The Beatles"

fi