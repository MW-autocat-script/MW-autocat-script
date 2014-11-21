#!/bin/bash

KEYWORDS_KANGAROORATS="Kangaroo(| )rat"
KEYWORDS_KANGAROORATS_ALL="$KEYWORDS_KANGAROORATS"

if [ "$1" == "" ];
then
  
  debug_start "Kangaroo rats"

  KANGAROORATS=$(egrep -i "$KEYWORDS_KANGAROORATS" "$NEWPAGES")

  categorize "KANGAROORATS" "Kangaroo rats"

  debug_end "Kangaroo rats"

fi