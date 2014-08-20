#!/bin/bash

KEYWORDS_BURKINAFASO="Burkina(| )Faso"
KEYWORDS_BURKINAFASO_ALL="$KEYWORDS_BURKINAFASO"

if [ "$1" == "" ];
then
  
  debug_start "Burkina Faso"

  BURKINAFASO=$(egrep -i "$KEYWORDS_BURKINAFASO" "$NEWPAGES")

  if [ "$BURKINAFASO" != "" ];
  then
    printf "%s" "$BURKINAFASO" > BurkinaFaso.txt
    export CATFILE="BurkinaFaso.txt"
    export CATNAME="Burkina Faso"
    $CATEGORIZE
    rm BurkinaFaso.txt
    unset BURKINAFASO
  fi

  debug_end "Burkina Faso"

fi