#!/bin/bash

KEYWORDS_SOUTHKOREA="South(| )Korea|Seoul"
KEYWORDS_SOUTHKOREA_SECONDARY="Korea\b"
KEYWORDS_SOUTHKOREA_SECONDARY_EXCLUDE="North(| )Korea" #Questions that ask about "Korea" are probably referring to South Korea
KEYWORDS_SOUTHKOREA_ALL="$KEYWORDS_SOUTHKOREA"

if [ "$1" == "" ];
then
  
  debug_start "South Korea"

  SKOREA=$(egrep -i "$KEYWORDS_SOUTHKOREA" newpages.txt && egrep -i "$KEYWORDS_SOUTHKOREA_SECONDARY" newpages.txt | egrep -iv "$KEYWORDS_SOUTHKOREA_SECONDARY_EXCLUDE")

  if [ "$SKOREA" != "" ];
  then
    printf "%s" "$SKOREA" > SouthKorea.txt
    export CATFILE="SouthKorea.txt"
    export CATNAME="South Korea"
    $CATEGORIZE
    rm SouthKorea.txt
    unset SKOREA
  fi

  debug_end "South Korea"

fi