#!/bin/bash

KEYWORDS_DUNE="Atreides|Harkonnen|Caladan|Arrakis|Melange|Gesserit"
KEYWORDS_DUNE_CASESENSITIVE="\bDune"
KEYWORDS_DUNE_ALL="$KEYWORDS_DUNE|$KEYWORDS_DUNE_CASESENSITIVE"

if [ "$1" == "" ];
then

  debug_start "Dune"

  DUNE=$(egrep -i "$KEYWORDS_DUNE" newpages.txt && egrep "$KEYWORDS_DUNE_CASESENSITIVE" newpages.txt)

  if [ "$DUNE" != "" ];
  then
    printf "%s" "$DUNE" > Dune.txt
    export CATFILE="Dune.txt"
    export CATNAME="Dune"
    $CATEGORIZE
    rm Dune.txt
    unset DUNE
  fi

  debug_end "Dune"

fi