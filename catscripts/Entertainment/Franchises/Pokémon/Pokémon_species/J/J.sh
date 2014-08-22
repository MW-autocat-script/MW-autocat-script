#!/bin/bash

KEYWORDS_JELLICENT="Jellicent"
KEYWORDS_JIGGLYPUFF="Jigglypuff"
KEYWORDS_JIRACHI="Jirachi"
KEYWORDS_JOLTEON="Jolteon"
KEYWORDS_JOLTIK="Joltik"
KEYWORDS_JUMPLUFF="Jumpluff"
KEYWORDS_JYNX="Jynx"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'J' script"

  JELLICENT=$(egrep -i "$KEYWORDS_JELLICENT" "$NEWPAGES")
  JIGGLYPUFF=$(egrep -i "$KEYWORDS_JIGGLYPUFF" "$NEWPAGES")
  JIRACHI=$(egrep -i "$KEYWORDS_JIRACHI" "$NEWPAGES")
  JOLTEON=$(egrep -i "$KEYWORDS_JOLTEON" "$NEWPAGES")
  JOLTIK=$(egrep -i "$KEYWORDS_JOLTIK" "$NEWPAGES")
  JUMPLUFF=$(egrep -i "$KEYWORDS_JUMPLUFF" "$NEWPAGES")
  JYNX=$(egrep -i "$KEYWORDS_JYNX" "$NEWPAGES")

  categorize "JELLICENT" "Jellicent"
  categorize "JIGGLYPUFF" "Jigglypuff"
  categorize "JIRACHI" "Jirachi"
  categorize "JOLTEON" "Jolteon"
  categorize "JOLTIK" "Joltik"
  categorize "JUMPLUFF" "Jumpluff"
  categorize "JYNX" "Jynx"

  debug_end "Pokemon 'J' script"

fi
