#!/bin/bash

KEYWORDS_KOTOR="Knights(| )of(| )the(| )Old(| )Republic|KOTOR"
KEYWORDS_KOTOR_EXCLUDE="The(| )Old(| )Republic(| )(2|II)|KOTOR(| )(2|II)"

if [ "$1" == "" ];
then

  debug_start "Star Wars: Knights of the Old Republic"

  KOTOR=$(egrep -i "$KEYWORDS_KOTOR" newpages.txt | egrep -iv "$KEYWORDS_KOTOR_EXCLUDE")

  if [ "$KOTOR" != "" ];
  then
    printf "%s" "$KOTOR" > KOTOR.txt
    export CATFILE="KOTOR.txt"
    export CATNAME="Star Wars: Knights of the Old Republic"
    $CATEGORIZE
    rm KOTOR.txt
    unset KOTOR
  fi

  debug_end "Star Wars: Knights of the Old Republic"

fi