#!/bin/bash

KEYWORDS_ENGLAND="England|British" #Since most people don't know the difference between British and English
KEYWORDS_LONDON="London"
KEYWORDS_BUCKINGHAMPALACE="Buckingham(| )Palace"
KEYWORDS_LONDON_EXCLUDE="Jack(| )London|$KEYWORDS_BUCKINGHAMPALACE" #Jack London was an American author
KEYWORDS_LONDON_ALL="$KEYWORDS_LONDON|$KEYWORDS_BUCKINGHAMPALACE"
KEYWORDS_STONEHENGE="Stonehenge"
KEYWORDS_ENGLAND_EXCLUDE="$KEYWORDS_LONDON_ALL|$KEYWORDS_STONEHENGE|British(| )Columbia'|New(| )England|Church(| )of(| )England|British(| )Isles"
KEYWORDS_ENGLAND_ALL="$KEYWORDS_ENGLAND|$KEYWORDS_LONDON_ALL|$KEYWORDS_STONEHENGE"

if [ "$1" == "" ];
then

  debug_start "England"

  ENGLAND=$(egrep -i "$KEYWORDS_ENGLAND" newpages.txt | egrep -iv "$KEYWORDS_ENGLAND_EXCLUDE")
  LONDON=$(egrep -i "$KEYWORDS_LONDON" newpages.txt | egrep -iv "$KEYWORDS_LONDON_EXCLUDE")
  BUCKINGHAMPALACE=$(egrep -i "$KEYWORDS_BUCKINGHAMPALACE" newpages.txt)
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

  if [ "$BUCKINGHAMPALACE" != "" ];
  then
    printf "%s" "$BUCKINGHAMPALACE" > BuckinghamPalace.txt
    export CATFILE="BuckinghamPalace.txt"
    export CATNAME="Buckingham Palace"
    $CATEGORIZE
    rm BuckinghamPalace.txt
    unset BUCKINGHAMPALACE
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