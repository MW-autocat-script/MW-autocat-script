#!/bin/bash

KEYWORDS_THAILAND="Thailand"
KEYWORDS_BANGKOK="Bangkok"
KEYWORDS_THAILAND_EXCLUDE="$KEYWORDS_BANGKOK"
KEYWORDS_BANGKOK_EXCLUDE="Mafia(| )Wars|Ban(g|)kok(| )Dangerous"
KEYWORDS_THAILAND_ALL="$KEYWORDS_THAILAND|$KEYWORDS_BANGKOK"

if [ "$1" == "" ];
then

  debug_start "Thailand"

  THAILAND=$(egrep -i "$KEYWORDS_THAILAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_THAILAND_EXCLUDE")
  BANGKOK=$(egrep -i "$KEYWORDS_BANGKOK" "$NEWPAGES" | egrep -iv "$KEYWORDS_BANGKOK_EXCLUDE")

  categorize "THAILAND" "Thailand"
  categorize "BANGKOK" "Bangkok"

  debug_end "Thailand"

fi