#!/bin/bash

KEYWORDS_TENNESSEE="Tennessee|,(| )T(|\.)N(|\.)$|Chattanooga" #Chattanooga is a city, but doesn't have enough questions yet to merit a category of its own
KEYWORDS_NASHVILLE="Nashville"
KEYWORDS_MEMPHIS="Memphis(|,)(| )(Tennessee|TN)"
KEYWORDS_MEMPHIS_EXCLUDE="Memphis(|,)(| )Egypt"
KEYWORDS_TENNESSEE_EXCLUDE="$KEYWORDS_NASHVILLE|$KEYWORDS_MEMPHIS"
KEYWORDS_TENNESSEE_ALL="$KEYWORDS_TENNESSEE|$KEYWORDS_MEMPHIS|$KEYWORDS_NASHVILLE"

if [ "$1" == "" ];
then

  debug_start "Tennessee"

  TENNESSEE=$(egrep -i "$KEYWORDS_TENNESSEE" "$NEWPAGES"| egrep -iv "$KEYWORDS_TENNESSEE_ALL")
  NASHVILLE=$(egrep -i "$KEYWORDS_NASHVILLE" "$NEWPAGES")
  MEMPHIS=$(egrep -i "$KEYWORDS_MEMPHIS" "$NEWPAGES"| egrep -iv "$KEYWORDS_MEMPHIS_EXCLUDE")

  categorize "TENNESSEE" "Tennessee"
  categorize "NASHVILLE" "Nashville"
  categorize "MEMPHIS" "Memphis"

  debug_end "Tennessee"

fi