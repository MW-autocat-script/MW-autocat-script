#!/bin/bash

KEYWORDS_ITUNES="iTunes|\bi Tunes"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting iTunes\n"
  fi

  ITUNES="$(egrep -i "$KEYWORDS_ITUNES" newpages.txt)"

  if [ "$ITUNES" != "" ];
  then
    printf "%s" "$ITUNES" > iTunes.txt
    export CATFILE="iTunes.txt"
    export CATNAME="iTunes"
    $CATEGORIZE
    rm iTunes.txt
    unset ITUNES
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing iTunes\n"
  fi

fi