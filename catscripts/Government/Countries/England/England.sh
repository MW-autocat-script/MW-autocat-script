#!/bin/bash

KEYWORDS_ENGLAND="England|British" #Since most people don't know the difference between British and English
KEYWORDS_LONDON="London"
KEYWORDS_LONDON_EXCLUDE="Jack(| )London" #Jack London was an American author
KEYWORDS_STONEHENGE="Stonehenge"
KEYWORDS_ENGLAND_EXCLUDE="$KEYWORDS_LONDON|$KEYWORDS_STONEHENGE|British(| )Columbia'|New(| )England|Church(| )of(| )England|British(| )Isles"

if [ "$1" == "" ];
then

  debug_start "England"

  ENGLAND=$(egrep -i "$KEYWORDS_ENGLAND" newpages.txt | egrep -iv "$KEYWORDS_ENGLAND_EXCLUDE")
  LONDON=$(egrep -i "$KEYWORDS_LONDON" newpages.txt | egrep -iv "$KEYWORDS_LONDON_EXCLUDE")
  STONEHENGE=$(egrep -i "$KEYWORDS_STONEHENGE" newpages.txt)

  if [ "$ENGLAND" != "" ];
  then
    printf "%s" "$ENGLAND" > England.txt
    export CATFILE="England.txt"
    export CATNAME="England"
    $CATEGORIZE
    rm England.txt
    unset ENGLAND
  fi

  if [ "$LONDON" != "" ];
  then
    printf "%s" "$LONDON" > London.txt
    export CATFILE="London.txt"
    export CATNAME="London"
    $CATEGORIZE
    rm London.txt
    unset LONDON
  fi

  if [ "$STONEHENGE" != "" ];
  then
    printf "%s" "$STONEHENGE" > Stonehenge.txt
    export CATFILE="Stonehenge.txt"
    export CATNAME="Stonehenge"
    $CATEGORIZE
    rm Stonehenge.txt
    unset STONEHENGE
  fi

  debug_end "England"

fi