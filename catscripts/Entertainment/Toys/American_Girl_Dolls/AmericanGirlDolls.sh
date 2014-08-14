#!/bin/bash

KEYWORDS_AMERICANGIRLDOLLS="American(| )Girl(| )Doll"
KEYWORDS_AMERICANGIRLDOLLS_ALL="$KEYWORDS_AMERICANGIRLDOLLS"

if [ "$1" == "" ];
then
  
  debug_start "American Girl Dolls"

  AMERICANGIRLDOLLS=$(egrep -i "$KEYWORDS_AMERICANGIRLDOLLS" newpages.txt)

  if [ "$AMERICANGIRLDOLLS" != "" ];
  then
    printf "%s" "$AMERICANGIRLDOLLS" > AmericanGirlDolls.txt
    export CATFILE="AmericanGirlDolls.txt"
    export CATNAME="American Girl Dolls"
    $CATEGORIZE
    rm AmericanGirlDolls.txt
    unset AMERICANGIRLDOLLS
  fi

  debug_end "American Girl Dolls"

fi