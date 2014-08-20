#!/bin/bash

KEYWORDS_AMERICANDAD="American(| )Dad|(Stan|Francine|Steve|Hayley)(| )Smith"

if [ "$1" == "" ];
then

  debug_start "American Dad"

  AMERICANDAD=$(egrep -i "$KEYWORDS_AMERICANDAD" "$NEWPAGES")

  if [ "$AMERICANDAD" != "" ];
  then
    printf "%s" "$AMERICANDAD" > AmericanDad.txt
    export CATFILE="AmericanDad.txt"
    export CATNAME="American Dad"
    $CATEGORIZE
    rm AmericanDad.txt
    unset AMERICANDAD
  fi

  debug_end "American Dad"

fi