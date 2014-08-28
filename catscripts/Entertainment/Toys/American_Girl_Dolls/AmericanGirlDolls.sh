#!/bin/bash

KEYWORDS_AMERICANGIRLDOLLS="American(| )Girl(| )Doll"
KEYWORDS_AMERICANGIRLDOLLS_ALL="$KEYWORDS_AMERICANGIRLDOLLS"

if [ "$1" == "" ];
then
  
  debug_start "American Girl Dolls"

  AMERICANGIRLDOLLS=$(egrep -i "$KEYWORDS_AMERICANGIRLDOLLS" "$NEWPAGES")

  categorize "AMERICANGIRLDOLLS" "American Girl Dolls"

  debug_end "American Girl Dolls"

fi