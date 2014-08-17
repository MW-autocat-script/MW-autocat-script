#!/bin/bash

KEYWORDS_SAINTLUCIA="(Saint|St(|\.))(| )Lucia"
KEYWORDS_SAINTLUCIA_ALL="$KEYWORDS_SAINTLUCIA"

if [ "$1" == "" ];
then
  
  debug_start "Saint Lucia"

  SAINTLUCIA=$(egrep -i "$KEYWORDS_SAINTLUCIA" newpages.txt)

  if [ "$SAINTLUCIA" != "" ];
  then
    printf "%s" "$SAINTLUCIA" > SaintLucia.txt
    export CATFILE="SaintLucia.txt"
    export CATNAME="Saint Lucia"
    $CATEGORIZE
    rm SaintLucia.txt
    unset SAINTLUCIA
  fi

  debug_end "Saint Lucia"

fi