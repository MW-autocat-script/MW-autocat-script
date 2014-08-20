#!/bin/bash

KEYWORDS_ARTEMISFOWL="Artemis(| )Fowl"

if [ "$1" == "" ];
then
  
  debug_start "Artemis Fowl"

  ARTEMIS=$(egrep -i "$KEYWORDS_ARTEMISFOWL" "$NEWPAGES")

  if [ "$ARTEMIS" != "" ];
  then
    printf "%s" "$ARTEMIS" > ArtemisFowl.txt
    export CATFILE="ArtemisFowl.txt"
    export CATNAME="Artemis Fowl"
    $CATEGORIZE
    rm ArtemisFowl.txt
    unset ARTEMIS
  fi

  debug_end "Artemis Fowl"

fi