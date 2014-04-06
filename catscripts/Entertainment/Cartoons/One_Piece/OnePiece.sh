#!/bin/bash

KEYWORDS_ONEPIECE="One(| )Piece"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "One Piece"

  ONEPIECE="$(egrep "$KEYWORDS_ONEPIECE" newpages.txt)"
  
  if [ "$ONEPIECE" != "" ];
  then
    printf "%s" "$ONEPIECE" > OnePiece.txt
    export CATFILE="OnePiece.txt"
    export CATNAME="One Piece"
    $CATEGORIZE
    rm OnePiece.txt
    unset ONEPIECE
  fi

  debug_end "One Piece"

fi