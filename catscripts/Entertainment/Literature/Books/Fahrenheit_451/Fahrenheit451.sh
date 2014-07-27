#!/bin/bash

KEYWORDS_FAHRENHEIT451="Fa(h|)renheit(| )451"

if [ "$1" == "" ];
then
  
  debug_start "Fahrenheit 451"

  FAHRENHEIT=$(egrep -i "$KEYWORDS_FAHRENHEIT451" newpages.txt)

  if [ "$FAHRENHEIT" != "" ];
  then
    printf "%s" "$FAHRENHEIT" > Fahrenheit451.txt
    export CATFILE="Fahrenheit451.txt"
    export CATNAME="Fahrenheit 451"
    $CATEGORIZE
    rm Fahrenheit451.txt
    unset FAHRENHEIT
  fi

  debug_end "Fahrenheit 451"

fi