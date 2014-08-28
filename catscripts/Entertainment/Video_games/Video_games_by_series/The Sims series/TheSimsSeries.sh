#!/bin/bash

KEYWORDS_THESIMS="The(| )Sims"
KEYWORDS_THESIMSTWO="Sims(| )2"
KEYWORDS_THESIMSTHREE="Sims(| )3"
KEYWORDS_MYSIMS="MySims|The(| )Sims(| )Wii"
KEYWORDS_THESIMS_EXCLUDE="$KEYWORDS_THESIMSTWO|$KEYWORDS_THESIMSTHREE|$KEYWORDS_MYSIMS"

if [ "$1" == "" ];
then

  debug_start "The Sims series"

  SIMS2=$(egrep -i "$KEYWORDS_THESIMSTWO" "$NEWPAGES")
  SIMS3=$(egrep -i "$KEYWORDS_THESIMSTHREE" "$NEWPAGES")
  MYSIMS=$(egrep -i "$KEYWORDS_MYSIMS" "$NEWPAGES")
  SERIES=$(egrep -i "$KEYWORDS_THESIMS" "$NEWPAGES" | egrep -iv "$KEYWORDS_THESIMS_EXCLUDE")

  categorize "SIMS2" "The Sims 2"
  categorize "SIMS3" "The Sims 3"
  categorize "MYSIMS" "MySims"
  categorize "SERIES" "The Sims series"

  debug_end "The Sims series"

fi