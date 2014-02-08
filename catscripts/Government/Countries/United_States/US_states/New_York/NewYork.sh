#!/bin/bash

KEYWORDS_NEWYORK="New(| )York"
KEYWORDS_NYC="New(| )York(| )City|\bNYC|New(| )York(|,)(| )New(| )York|Manhattan|Brooklyn|Queen(|,)(| )New(| )York"
KEYWORDS_NEWYORK_EXCLUDE="$KEYWORDS_NYC"

if [ "$1" == "" ];
then

  debug_start "New York"

  NEWYORK="$(egrep -i "$KEYWORDS_NEWYORK" newpages.txt | egrep -iv "$KEYWORDS_NEWYORK_EXCLUDE")"
  NYC="$(egrep -i "$KEYWORDS_NYC" newpages.txt)"

  if [ "$NEWYORK" != "" ];
  then
    printf "%s" "$NEWYORK" > NewYork.txt
    export CATFILE="NewYork.txt"
    export CATNAME="New York"
    $CATEGORIZE
    rm NewYork.txt
    unset NEWYORK
  fi

  if [ "$NYC" != "" ];
  then
    printf "%s" "$NYC" > NewYorkCity.txt
    export CATFILE="NewYorkCity.txt"
    export CATNAME="New York City"
    $CATEGORIZE
    rm NewYorkCity.txt
    unset NYC
  fi

  debug_end "New York"

fi