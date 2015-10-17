#!/bin/bash

KEYWORDS_DUNE="Atreides|Harkonnen|Caladan|Arrakis|Melange|Gesserit"
KEYWORDS_DUNE_CASESENSITIVE="\bDune"
KEYWORDS_DUNE_ALL="$KEYWORDS_DUNE|$KEYWORDS_DUNE_CASESENSITIVE"

if [ "$1" == "" ];
then

  debug_start "Dune"

  DUNE=$(egrep -i "$KEYWORDS_DUNE" "$NEWPAGES"; egrep "$KEYWORDS_DUNE_CASESENSITIVE" "$NEWPAGES")

  categorize "DUNE" "Dune"

  debug_end "Dune"

fi