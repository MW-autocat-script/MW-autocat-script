#!/bin/bash

KEYWORDS_JKROWLING="J(|\.)(| )K(|\.)(| )Rowling|Jo(|anne)(| )Rowling"
. ./catscripts/Entertainment/Movies/Harry_Potter/HarryPotter.sh norun #KEYWORDS_HARRYPOTTER
KEYWORDS_JKROWLING_EXCLUDE="$KEYWORDS_HARRYPOTTER"

if [ "$1" == "" ];
then
  
  debug_start "J. K. Rowling"

  ROWLING=$(egrep -i "$KEYWORDS_JKROWLING" "$NEWPAGES" | egrep -iv "$KEYWORDS_JKROWLING_EXCLUDE")

  if [ "$ROWLING" != "" ];
  then
    printf "%s" "$ROWLING" > Rowling.txt
    export CATFILE="Rowling.txt"
    export CATNAME="J. K. Rowling"
    $CATEGORIZE
    rm Rowling.txt
    unset ROWLING
  fi

  debug_end "J. K. Rowling"

fi
