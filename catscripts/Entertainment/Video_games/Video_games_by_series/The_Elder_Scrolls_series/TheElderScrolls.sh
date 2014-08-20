#!/bin/bash

KEYWORDS_THEELDERSCROLLS="The(| )Elder(| )Scrolls"
KEYWORDS_SKYRIM="Skyrim|Elder Scrolls (Five|5|V)\b"
KEYWORDS_OBLIVION="The Elder Scrolls.+Oblivion|\b(i|o)n Oblivion|Elder Scrolls (Four|IV|4)\b"
KEYWORDS_THEELDERSCROLLS_EXCLUDE="$KEYWORDS_OBLIVION|$KEYWORDS_SKYRIM"

if [ "$1" == "" ];
then

  debug_start "The Elder Scrolls series"

  SCROLLS=$(egrep -i "$KEYWORDS_THEELDERSCROLLS" "$NEWPAGES" | egrep -iv "$KEYWORDS_THEELDERSCROLLS_EXCLUDE")
  SKYRIM=$(egrep -i "$KEYWORDS_SKYRIM" "$NEWPAGES")
  OBLIVION=$(egrep -i "$KEYWORDS_OBLIVION" "$NEWPAGES")

  if [ "$SCROLLS" != "" ];
  then
    printf "%s" "$SCROLLS" > Scrolls.txt
    export CATFILE="Scrolls.txt"
    export CATNAME="The Elder Scrolls series"
    $CATEGORIZE
    rm Scrolls.txt
    unset SCROLLS
  fi

  if [ "$SKYRIM" != "" ];
  then
    printf "%s" "$SKYRIM" > Skyrim.txt
    export CATFILE="Skyrim.txt"
    export CATNAME="The Elder Scrolls V: Skyrim"
    $CATEGORIZE
    rm Skyrim.txt
    unset SKYRIM
  fi

  if [ "$OBLIVION" != "" ];
  then
    printf "%s" "$OBLIVION" > Oblivion.txt
    export CATFILE="Oblivion.txt"
    export CATNAME="The Elder Scrolls IV: Oblivion"
    $CATEGORIZE
    rm Oblivion.txt
    unset OBLIVION
  fi

  debug_end "The Elder Scrolls series"

fi