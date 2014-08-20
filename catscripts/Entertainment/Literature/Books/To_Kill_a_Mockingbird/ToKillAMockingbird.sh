#!/bin/bash

KEYWORDS_TOKILLAMOCKINGBIRD="To(| )Kill(| )A(| )Mocking(| )bird|Atticus.+(Jem|Scout)|Jem\b.+(Scout|Atticus)|Scout.+(Atticus|Jem)"

if [ "$1" == "" ];
then

  debug_start "To Kill a Mockingbird"

  MOCKINGBIRD=$(egrep -i "$KEYWORDS_TOKILLAMOCKINGBIRD" "$NEWPAGES")

  if [ "$MOCKINGBIRD" != "" ];
  then
    printf "%s" "$MOCKINGBIRD" > Mockingbird.txt
    export CATFILE="Mockingbird.txt"
    export CATNAME="To Kill a Mockingbird"
    $CATEGORIZE
    rm Mockingbird.txt
    unset MOCKINGBIRD
  fi

  debug_end "To Kill a Mockingbird"

fi