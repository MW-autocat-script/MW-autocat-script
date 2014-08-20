#!/bin/bash

KEYWORDS_OMAN="\bOman(|s)\b"
KEYWORDS_OMAN_ALL="$KEYWORDS_OMAN"

if [ "$1" == "" ];
then
  
  debug_start "Oman"

  OMAN=$(egrep -i "$KEYWORDS_OMAN" "$NEWPAGES")

  if [ "$OMAN" != "" ];
  then
    printf "%s" "$OMAN" > Oman.txt
    export CATFILE="Oman.txt"
    export CATNAME="Oman"
    $CATEGORIZE
    rm Oman.txt
    unset OMAN
  fi

  debug_end "Oman"

fi