#!/bin/bash

KEYWORDS_WHALES="Whale|baleen"
KEYWORDS_BLUEWHALE="blue(| )whale"
KEYWORDS_HUMPBACK="humpback"
KEYWORDS_WHALES_EXCLUDE="$KEYWORDS_BLUEWHALE|$KEYWORDS_HUMPBACK|whale(| )shark|killer(| )whale|orca"
KEYWORDS_WHALES_ALL="$KEYWORDS_WHALES|$KEYWORDS_BLUEWHALE|$KEYWORDS_HUMPBACK"

if [ "$1" == "" ];
then
  
  debug_start "Whales"

  WHALES=$(egrep -i "$KEYWORDS_WHALES" "$NEWPAGES" | egrep -iv "$KEYWORDS_WHALES_EXCLUDE")
  BLUEWHALE=$(egrep -i "$KEYWORDS_BLUEWHALE" "$NEWPAGES")
  HUMPBACK=$(egrep -i "$KEYWORDS_HUMPBACK" "$NEWPAGES")

  categorize "WHALES" "Whales"
  categorize "BLUEWHALES" "Blue whales"
  categorize "HUMPBACK" "Humpback whales"

  debug_end "Whales"

fi