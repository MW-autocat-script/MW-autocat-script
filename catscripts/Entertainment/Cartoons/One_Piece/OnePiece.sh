#!/bin/bash

KEYWORDS_ONEPIECE="One(| )Piece"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "One Piece"

  ONEPIECE=$(egrep "$KEYWORDS_ONEPIECE" "$NEWPAGES")
  
  categorize "ONEPIECE" "One Piece"

  debug_end "One Piece"

fi