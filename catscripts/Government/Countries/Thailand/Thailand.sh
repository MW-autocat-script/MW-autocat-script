#!/bin/bash

KEYWORDS_THAILAND="Thailand"
KEYWORDS_BANGKOK="Bangkok"
KEYWORDS_THAILAND_EXCLUDE="$KEYWORDS_BANGKOK"
KEYWORDS_BANGKOK_EXCLUDE="Mafia(| )Wars|Ban(g|)kok(| )Dangerous"
KEYWORDS_THAILAND_ALL="$KEYWORDS_THAILAND|$KEYWORDS_BANGKOK"

if [ "$1" == "" ];
then

  debug_start "Thailand"

  THAILAND=$(egrep -i "$KEYWORDS_THAILAND" newpages.txt | egrep -iv "$KEYWORDS_THAILAND_EXCLUDE")
  BANGKOK=$(egrep -i "$KEYWORDS_BANGKOK" newpages.txt | egrep -iv "$KEYWORDS_BANGKOK_EXCLUDE")

  if [ "$THAILAND" != "" ];
  then
    printf "%s" "$THAILAND" > Thailand.txt
    export CATFILE="Thailand.txt"
    export CATNAME="Thailand"
    $CATEGORIZE
    rm Thailand.txt
    unset THAILAND
  fi

  if [ "$BANGKOK" != "" ];
  then
    printf "%s" "$BANGKOK" > Bangkok.txt
    export CATFILE="Bangkok.txt"
    export CATNAME="Bangkok"
    $CATEGORIZE
    rm Bangkok.txt
    unset BANGKOK
  fi

  debug_end "Thailand"

fi