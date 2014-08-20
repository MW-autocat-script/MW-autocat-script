#!/bin/bash

KEYWORDS_KOTOR2="Knights(| )of(| )the(| )Old(| )Republic(| )(II|2)|KOTOR(| )(2|II)"

if [ "$1" == "" ];
then

  debug_start "Star Wars: Knights of the Old Republic II – The Sith Lords"

  KOTOR2=$(egrep -i "$KEYWORDS_KOTOR2" "$NEWPAGES")

  if [ "$KOTOR2" != "" ];
  then
    printf "%s" "$KOTOR2" > KOTOR2.txt
    export CATFILE="KOTOR2.txt"
    export CATNAME="Star Wars: Knights of the Old Republic II – The Sith Lords"
    $CATEGORIZE
    rm KOTOR2.txt
    unset KOTOR2
  fi

  debug_end "Star Wars: Knights of the Old Republic II – The Sith Lords"

fi