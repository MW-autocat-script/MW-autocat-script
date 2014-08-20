#!/bin/bash

KEYWORDS_ROBERTFROST="Robert(| )Frost"

if [ "$1" == "" ];
then
  
  debug_start "Robert Frost"

  FROST=$(egrep -i "$KEYWORDS_ROBERTFROST" "$NEWPAGES")

  if [ "$FROST" != "" ];
  then
    printf "%s" "$FROST" > RobertFrost.txt
    export CATFILE="RobertFrost.txt"
    export CATNAME="Robert Frost"
    $CATEGORIZE
    rm RobertFrost.txt
    unset FROST
  fi

  debug_end "Robert Frost"

fi